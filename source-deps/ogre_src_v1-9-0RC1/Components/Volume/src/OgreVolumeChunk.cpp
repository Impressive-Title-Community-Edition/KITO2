/*
-----------------------------------------------------------------------------
This source file is part of OGRE
(Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org

Copyright (c) 2000-2013 Torus Knot Software Ltd
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
-----------------------------------------------------------------------------
*/
#include "OgreVolumeChunk.h"

#include "OgreCamera.h"
#include "OgreRoot.h"
#include "OgreLogManager.h"
#include "OgreTimer.h"
#include "OgreConfigFile.h"

#include "OgreVolumeIsoSurfaceMC.h"
#include "OgreVolumeOctreeNodeSplitPolicy.h"
#include "OgreVolumeTextureSource.h"

namespace Ogre {
namespace Volume {

    const String Chunk::MOVABLE_TYPE_NAME = "VolumeChunk";
    const uint16 Chunk::WORKQUEUE_LOAD_REQUEST = 1;
    size_t Chunk::mChunksBeingProcessed = 0;
    
    //-----------------------------------------------------------------------

    void Chunk::loadChunk(SceneNode *parent, const Vector3 &from, const Vector3 &to, const Vector3 &totalFrom, const Vector3 &totalTo, const size_t level, const size_t maxLevels, const ChunkParameters *parameters)
    {
        // This might already exist on update
        if (!mNode)
        {
            mNode = parent->createChildSceneNode();
        }
        if (parameters->createGeometryFromLevel == 0 || level <= parameters->createGeometryFromLevel)
        {
            mChunksBeingProcessed++;

            // Call worker
            ChunkRequest req;
            req.totalFrom = totalFrom;
            req.totalTo = totalTo;
            req.parameters = parameters;
            req.level = level;
            req.maxLevels = maxLevels;
            req.isUpdate = parameters->updateFrom != Vector3::ZERO || parameters->updateTo != Vector3::ZERO;

            req.origin = this;
            req.root = OGRE_NEW OctreeNode(from, to);
            req.mb = OGRE_NEW MeshBuilder();
            req.dualGridGenerator = OGRE_NEW DualGridGenerator();

            WorkQueue* wq = Root::getSingleton().getWorkQueue();
            uint16 workQueueChannel = wq->getChannel("Ogre/VolumeRendering");
            wq->addRequest(workQueueChannel, WORKQUEUE_LOAD_REQUEST, Any(req));
        }
        else
        {
            mInvisible = false;
        }
    }

    //-----------------------------------------------------------------------

    bool Chunk::contributesToVolumeMesh(const Vector3 &from, const Vector3 &to, const Source *src) const
    {
        Real centralValue = src->getValue((to - from) / (Real)2.0 + from);
        return Math::Abs(centralValue) <= (to - from).length() * (Real)1.5;
    }

    //-----------------------------------------------------------------------
    
    void Chunk::loadChildren(SceneNode *parent, const Vector3 &from, const Vector3 &to, const Vector3 &totalFrom, const Vector3 &totalTo, const size_t level, const size_t maxLevels, const ChunkParameters *parameters)
    {
        // Now recursively create the more detailed children
        if (level > 2)
        {
            Vector3 newCenter, xWidth, yWidth, zWidth;
            OctreeNode::getChildrenDimensions(from, to, newCenter, xWidth, yWidth, zWidth);
            if (!mChildren)
            {
                mChildren = new Chunk*[OctreeNode::OCTREE_CHILDREN_COUNT];
                mChildren[0] = createInstance();
                mChildren[1] = createInstance();
                mChildren[2] = createInstance();
                mChildren[3] = createInstance();
                mChildren[4] = createInstance();
                mChildren[5] = createInstance();
                mChildren[6] = createInstance();
                mChildren[7] = createInstance();
                mChildren[0]->shared = shared;
                mChildren[1]->shared = shared;
                mChildren[2]->shared = shared;
                mChildren[3]->shared = shared;
                mChildren[4]->shared = shared;
                mChildren[5]->shared = shared;
                mChildren[6]->shared = shared;
                mChildren[7]->shared = shared;
            }
            mChildren[0]->doLoad(mNode, from, newCenter, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[1]->doLoad(mNode, from + xWidth, newCenter + xWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[2]->doLoad(mNode, from + xWidth + zWidth, newCenter + xWidth + zWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[3]->doLoad(mNode, from + zWidth, newCenter + zWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[4]->doLoad(mNode, from + yWidth, newCenter + yWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[5]->doLoad(mNode, from + yWidth + xWidth, newCenter + yWidth + xWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[6]->doLoad(mNode, from + yWidth + xWidth + zWidth, newCenter + yWidth + xWidth + zWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
            mChildren[7]->doLoad(mNode, from + yWidth + zWidth, newCenter + yWidth + zWidth, totalFrom, totalTo, level - 1, maxLevels, parameters);
        }
        // Just load one child of the same size as the parent for the leafes because they actually don't need to be subdivided as they
        // are all rendered anyway.
        else if (level > 1)
        {
            if (!mChildren)
            {
                mChildren = new Chunk*[2];
                mChildren[0] = createInstance();
                mChildren[0]->shared = shared;
                mChildren[1] = 0; // Indicator that there are no more children.
            }
            mChildren[0]->doLoad(mNode, from, to, totalFrom, totalTo, level - 1, maxLevels, parameters);
        }
    }

    //-----------------------------------------------------------------------
    
    void Chunk::doLoad(SceneNode *parent, const Vector3 &from, const Vector3 &to, const Vector3 &totalFrom, const Vector3 &totalTo, const size_t level, const size_t maxLevels, const ChunkParameters *parameters)
    {

        // Handle the situation where we update an existing tree
        if (parameters->updateFrom != Vector3::ZERO || parameters->updateTo != Vector3::ZERO)
        {
            // Early out if an update of a part of the tree volume is going on and this chunk is outside of the area.
            AxisAlignedBox chunkCube(from, to);
            AxisAlignedBox updatedCube(parameters->updateFrom, parameters->updateTo);
            if (!chunkCube.intersects(updatedCube))
            {
                return;
            }
            // Free memory from old mesh version
            if (mRenderOp.vertexData)
            {
                OGRE_DELETE mRenderOp.vertexData;
                mRenderOp.vertexData = 0;
            }
            if (mRenderOp.indexData)
            {
                OGRE_DELETE mRenderOp.indexData;
                mRenderOp.indexData = 0;
            }
        }

        // Set to invisible for now.
        mInvisible = true;
        mVisible  = false;
        
        // Don't generate this chunk if it doesn't contribute to the whole volume.
        if (!contributesToVolumeMesh(from, to, parameters->src))
        {
            return;
        }
    
        loadChunk(parent, from, to, totalFrom, totalTo, level, maxLevels, parameters);
        
        loadChildren(parent, from, to, totalFrom, totalTo, level, maxLevels, parameters);
    }
    
    //-----------------------------------------------------------------------

    void Chunk::prepareGeometry(const ChunkRequest *chunkRequest)
    {
        OctreeNodeSplitPolicy policy(chunkRequest->parameters->src, chunkRequest->parameters->errorMultiplicator * chunkRequest->parameters->baseError, chunkRequest->parameters->octreeNodeDistanceCheckDiagonalFactor);
        mError = (Real)chunkRequest->level * chunkRequest->parameters->errorMultiplicator * chunkRequest->parameters->baseError;
        chunkRequest->root->split(&policy, chunkRequest->parameters->src, mError);
        Real maxMSDistance = (Real)chunkRequest->level * chunkRequest->parameters->errorMultiplicator * chunkRequest->parameters->baseError * chunkRequest->parameters->skirtFactor;
        IsoSurface *is = OGRE_NEW IsoSurfaceMC(chunkRequest->parameters->src);
        chunkRequest->dualGridGenerator->generateDualGrid(chunkRequest->root, is, chunkRequest->mb, maxMSDistance,
            chunkRequest->totalFrom, chunkRequest->totalTo, chunkRequest->parameters->createDualGridVisualization);
        OGRE_DELETE is;
    }
    
    //-----------------------------------------------------------------------

    void Chunk::loadGeometry(const ChunkRequest *chunkRequest)
    {
        size_t chunkTriangles = chunkRequest->mb->generateBuffers(mRenderOp);
        chunkRequest->origin->mInvisible = chunkTriangles == 0;

        if (!mInvisible && chunkRequest->parameters->lodCallback && chunkRequest->parameters->lodCallbackLod  == chunkRequest->maxLevels - chunkRequest->level + 1)
        {
            chunkRequest->mb->executeCallback(chunkRequest->parameters->lodCallback);
        }

        chunkRequest->origin->mBox = chunkRequest->mb->getBoundingBox();

        if (!mInvisible)
        {
            if (chunkRequest->isUpdate)
            {
                mNode->detachObject(this);
            }
            mNode->attachObject(this);
        }

        mVisible = false;

        if (chunkRequest->parameters->createDualGridVisualization)
        {
            mDualGrid = chunkRequest->dualGridGenerator->getDualGrid(chunkRequest->parameters->sceneManager);
            if (mDualGrid)
            {
                mNode->attachObject(mDualGrid);
                mDualGrid->setVisible(false);
            }
        }

        if (chunkRequest->parameters->createOctreeVisualization)
        {
            mOctree = chunkRequest->root->getOctreeGrid(chunkRequest->parameters->sceneManager);
            mNode->attachObject(mOctree);
            mOctree->setVisible(false);
        }
    }
    
    //-----------------------------------------------------------------------

    Chunk::Chunk(void) : mDualGrid(0), mOctree(0), mChildren(0), mNode(0), isRoot(false)
    {
    }
    
    //-----------------------------------------------------------------------

    Chunk::~Chunk(void)
    {
        OGRE_DELETE mRenderOp.indexData;
        OGRE_DELETE mRenderOp.vertexData;
        Root::getSingleton().removeFrameListener(this);
        if (mChildren)
        {
            OGRE_DELETE mChildren[0];
            if (mChildren[1])
            {
                OGRE_DELETE mChildren[1];
                OGRE_DELETE mChildren[2];
                OGRE_DELETE mChildren[3];
                OGRE_DELETE mChildren[4];
                OGRE_DELETE mChildren[5];
                OGRE_DELETE mChildren[6];
                OGRE_DELETE mChildren[7];
            }
        }
        delete[] mChildren;
        if (isRoot)
        {
            delete shared;
        }
    }
    
    //-----------------------------------------------------------------------

    const String& Chunk::getMovableType(void) const
    {
        return MOVABLE_TYPE_NAME;
    }
    
    //-----------------------------------------------------------------------

    Real Chunk::getSquaredViewDepth(const Camera* camera) const
    {
        return (mBox.getCenter() * shared->scale).squaredDistance(camera->getPosition());
    }
    
    //-----------------------------------------------------------------------

    Real Chunk::getBoundingRadius() const
    {
        return mBox.getMinimum().distance(mBox.getCenter()) * shared->scale;
    }
    
    //-----------------------------------------------------------------------

    void Chunk::load(SceneNode *parent, const Vector3 &from, const Vector3 &to, size_t level, const ChunkParameters *parameters)
    {
        if (parameters->baseError == (Real)0.0 || parameters->errorMultiplicator == (Real)0.0 ||
            parameters->sceneManager == 0 || parameters->src == 0)
        {
            OGRE_EXCEPT(Exception::ERR_INVALIDPARAMS, 
                "Invalid parameters given!",
                __FUNCTION__);
        }
        mChunksBeingProcessed = 0;

        isRoot = true;

        // Don't recreate the shared parameters on update.
        if (parameters->updateFrom == Vector3::ZERO && parameters->updateTo == Vector3::ZERO)
        {
            shared = new ChunkTreeSharedData();
            shared->maxScreenSpaceError = parameters->maxScreenSpaceError;
            shared->scale = parameters->scale;
            parent->scale(Vector3(parameters->scale));
        }

        WorkQueue* wq = Root::getSingleton().getWorkQueue();
        uint16 workQueueChannel = wq->getChannel("Ogre/VolumeRendering");
        wq->addResponseHandler(workQueueChannel, this);
        wq->addRequestHandler(workQueueChannel, this);

        doLoad(parent, from, to, from, to, level, level, parameters);

        // Wait for the threads.
        while(mChunksBeingProcessed)
        {
            OGRE_THREAD_SLEEP(0);
            wq->processResponses();
        }
    
        wq->removeRequestHandler(workQueueChannel, this);
        wq->removeResponseHandler(workQueueChannel, this);
    
        // Just add the frame listener on initial load
        if (parameters->updateFrom == Vector3::ZERO && parameters->updateTo == Vector3::ZERO)
        {
            Root::getSingleton().addFrameListener(this);
        }
    }
    
    //-----------------------------------------------------------------------

    ChunkParameters Chunk::load(SceneNode *parent, SceneManager *sceneManager, const String& filename, Source **sourceResult, MeshBuilderCallback *lodCallback, size_t lodCallbackLod, const String& resourceGroup)
    {
        ConfigFile config;
        config.loadFromResourceSystem(filename, resourceGroup);

        String source = config.getSetting("source");
        Vector3 dimensions = StringConverter::parseVector3(config.getSetting("sourceDimensions"));
        bool trilinearValue = StringConverter::parseBool(config.getSetting("trilinearValue"));
        bool trilinearGradient = StringConverter::parseBool(config.getSetting("trilinearGradient"));
        bool sobelGradient = StringConverter::parseBool(config.getSetting("sobelGradient"));

        TextureSource *textureSource = new TextureSource(source, dimensions.x, dimensions.y, dimensions.z, trilinearValue, trilinearGradient, sobelGradient);
    
        Vector3 from = StringConverter::parseVector3(config.getSetting("scanFrom"));
        Vector3 to = StringConverter::parseVector3(config.getSetting("scanTo"));
        size_t level = StringConverter::parseUnsignedInt(config.getSetting("level"));
        Real scale = StringConverter::parseReal(config.getSetting("scale"));
        Real maxScreenSpaceError = StringConverter::parseReal(config.getSetting("maxScreenSpaceError"));
    
        ChunkParameters parameters;
        parameters.sceneManager = sceneManager;
        parameters.lodCallback = lodCallback;
        parameters.lodCallbackLod = lodCallbackLod;
        parameters.src = textureSource;
        parameters.scale = scale;
        parameters.maxScreenSpaceError = maxScreenSpaceError;
        parameters.createGeometryFromLevel = StringConverter::parseInt(config.getSetting("createGeometryFromLevel"));
        parameters.baseError = StringConverter::parseReal(config.getSetting("baseError"));
        parameters.errorMultiplicator = StringConverter::parseReal(config.getSetting("errorMultiplicator"));
        parameters.createOctreeVisualization = StringConverter::parseBool(config.getSetting("createOctreeVisualization"));
        parameters.createDualGridVisualization = StringConverter::parseBool(config.getSetting("createDualGridVisualization"));
        parameters.skirtFactor = StringConverter::parseReal(config.getSetting("skirtFactor"));
    
        load(parent, from, to, level, &parameters);
        
        if (sourceResult)
        {
            *sourceResult = textureSource;
        }
        else
        {
            delete textureSource;
        }

        String material = config.getSetting("material");
        setMaterial(material);

        for (size_t i = 0; i < level; ++i)
        {
            StringUtil::StrStreamType stream;
            stream << "materialOfLevel" << i;
            String materialOfLevel = config.getSetting(stream.str());
            if (materialOfLevel != StringUtil::BLANK)
            {
                setMaterialOfLevel(i, materialOfLevel);
            }
        }
        parameters.src = 0;
        return parameters;
    }
    
    //-----------------------------------------------------------------------

    void Chunk::setDualGridVisible(const bool visible)
    {
        shared->dualGridVisible = visible;
        if (mChildren)
        {
            mChildren[0]->setDualGridVisible(visible);
            if (mChildren[1])
            {
                mChildren[1]->setDualGridVisible(visible);
                mChildren[2]->setDualGridVisible(visible);
                mChildren[3]->setDualGridVisible(visible);
                mChildren[4]->setDualGridVisible(visible);
                mChildren[5]->setDualGridVisible(visible);
                mChildren[6]->setDualGridVisible(visible);
                mChildren[7]->setDualGridVisible(visible);
            }
        }
    }
    
    //-----------------------------------------------------------------------

    bool Chunk::getDualGridVisible(void) const
    {
        return shared->dualGridVisible;
    }
    
    //-----------------------------------------------------------------------

    void Chunk::setOctreeVisible(const bool visible)
    {
        shared->octreeVisible = visible;
        if (mChildren)
        {
            mChildren[0]->setOctreeVisible(visible);
            if (mChildren[1])
            {
                mChildren[1]->setOctreeVisible(visible);
                mChildren[2]->setOctreeVisible(visible);
                mChildren[3]->setOctreeVisible(visible);
                mChildren[4]->setOctreeVisible(visible);
                mChildren[5]->setOctreeVisible(visible);
                mChildren[6]->setOctreeVisible(visible);
                mChildren[7]->setOctreeVisible(visible);
            }
        }
    }
    
    //-----------------------------------------------------------------------

    bool Chunk::getOctreeVisible(void) const
    {
        return shared->octreeVisible;
    }
    
    //-----------------------------------------------------------------------

    bool Chunk::getVolumeVisible(void) const
    {
        return shared->volumeVisible;
    }
    
    //-----------------------------------------------------------------------

    bool Chunk::frameStarted(const FrameEvent& evt)
    {
    
        if (mInvisible)
        {
            return true;
        }

        // This might be a chunk on a lower LOD level without geometry, so lets just proceed here.
        if (!mRenderOp.vertexData && mChildren)
        {
            mChildren[0]->frameStarted(evt);
            if (mChildren[1])
            {
                mChildren[1]->frameStarted(evt);
                mChildren[2]->frameStarted(evt);
                mChildren[3]->frameStarted(evt);
                mChildren[4]->frameStarted(evt);
                mChildren[5]->frameStarted(evt);
                mChildren[6]->frameStarted(evt);
                mChildren[7]->frameStarted(evt);
            }
            return true;
        }

        if (!mCamera)
        {
            setChunkVisible(true, false);
            return true;
        }
    
        Real k = ((Real)mCamera->getViewport()->getActualHeight() / ((Real)2.0 * tan(mCamera->getFOVy().valueRadians() / (Real)2.0)));

        
        // Get the distance to the center.
        Vector3 camPos = mCamera->getRealPosition();
        Real d = (mBox.getCenter() * shared->scale).distance(camPos);
        if (d < 1.0)
        {
            d = 1.0;
        }

        Real screenSpaceError = mError / d * k;

        if (screenSpaceError <= shared->maxScreenSpaceError / shared->scale)
        {
            setChunkVisible(true, false);
            if (mChildren)
            {
                mChildren[0]->setChunkVisible(false, true);
                if (mChildren[1])
                {
                    mChildren[1]->setChunkVisible(false, true);
                    mChildren[2]->setChunkVisible(false, true);
                    mChildren[3]->setChunkVisible(false, true);
                    mChildren[4]->setChunkVisible(false, true);
                    mChildren[5]->setChunkVisible(false, true);
                    mChildren[6]->setChunkVisible(false, true);
                    mChildren[7]->setChunkVisible(false, true);
                }
            }
        }
        else
        {
            setChunkVisible(false, false);
            if (mChildren)
            {
                mChildren[0]->frameStarted(evt);
                if (mChildren[1])
                {
                    mChildren[1]->frameStarted(evt);
                    mChildren[2]->frameStarted(evt);
                    mChildren[3]->frameStarted(evt);
                    mChildren[4]->frameStarted(evt);
                    mChildren[5]->frameStarted(evt);
                    mChildren[6]->frameStarted(evt);
                    mChildren[7]->frameStarted(evt);
                }
            }
            else
            {
                setChunkVisible(true, false);
            }
        }
    
        return true;
    }
    
    //-----------------------------------------------------------------------

    Chunk* Chunk::createInstance(void)
    {
        return OGRE_NEW Chunk();
    }
    
    //-----------------------------------------------------------------------

    void Chunk::setMaterial(const String& matName)
    {
        SimpleRenderable::setMaterial(matName);

        if (mChildren)
        {
            mChildren[0]->setMaterial(matName);
            if (mChildren[1])
            {
                mChildren[1]->setMaterial(matName);
                mChildren[2]->setMaterial(matName);
                mChildren[3]->setMaterial(matName);
                mChildren[4]->setMaterial(matName);
                mChildren[5]->setMaterial(matName);
                mChildren[6]->setMaterial(matName);
                mChildren[7]->setMaterial(matName);
            }
        }
    }
    
    //-----------------------------------------------------------------------

    void Chunk::setMaterialOfLevel(size_t level, const String& matName)
    {
        if (level == 0)
        {
            SimpleRenderable::setMaterial(matName);
        }
        
        if (level > 0 && mChildren)
        {
            mChildren[0]->setMaterialOfLevel(level - 1, matName);
            if (mChildren[1])
            {
                mChildren[1]->setMaterialOfLevel(level - 1, matName);
                mChildren[2]->setMaterialOfLevel(level - 1, matName);
                mChildren[3]->setMaterialOfLevel(level - 1, matName);
                mChildren[4]->setMaterialOfLevel(level - 1, matName);
                mChildren[5]->setMaterialOfLevel(level - 1, matName);
                mChildren[6]->setMaterialOfLevel(level - 1, matName);
                mChildren[7]->setMaterialOfLevel(level - 1, matName);
            }
        }
    }

    //-----------------------------------------------------------------------

    void Chunk::getChunksOfLevel(const size_t level, VecChunk &result) const
    {
        if (level == 0)
        {
            if (!mInvisible)
            {
                result.push_back(this);
            }
            return;
        }

        if (mChildren)
        {
            mChildren[0]->getChunksOfLevel(level - 1, result);
            if (mChildren[1])
            {
                mChildren[1]->getChunksOfLevel(level - 1, result);
                mChildren[2]->getChunksOfLevel(level - 1, result);
                mChildren[3]->getChunksOfLevel(level - 1, result);
                mChildren[4]->getChunksOfLevel(level - 1, result);
                mChildren[5]->getChunksOfLevel(level - 1, result);
                mChildren[6]->getChunksOfLevel(level - 1, result);
                mChildren[7]->getChunksOfLevel(level - 1, result);
            }
        }
    }
    
    //-----------------------------------------------------------------------
  
    WorkQueue::Response* Chunk::handleRequest(const WorkQueue::Request* req, const WorkQueue* srcQ)
    {
        ChunkRequest cReq = any_cast<ChunkRequest>(req->getData());
        cReq.origin->prepareGeometry(&cReq);
        return OGRE_NEW WorkQueue::Response(req, true, Any());
    }
    
    //-----------------------------------------------------------------------

    void Chunk::handleResponse(const WorkQueue::Response* res, const WorkQueue* srcQ)
    {
        // Fill up the buffers
        if (res->succeeded())
        {
            ChunkRequest cReq = any_cast<ChunkRequest>(res->getRequest()->getData());
            cReq.origin->loadGeometry(&cReq);
            OGRE_DELETE cReq.root;
            OGRE_DELETE cReq.dualGridGenerator;
            OGRE_DELETE cReq.mb;
            mChunksBeingProcessed--;
        }
    }
    
    //-----------------------------------------------------------------------

    Real Chunk::getScale(void) const
    {
        return shared->scale;
    }
    
    //-----------------------------------------------------------------------

    void Chunk::setVolumeVisible(bool visible)
    {
        shared->volumeVisible = visible;
        mVisible = visible;
        if (mChildren)
        {
            mChildren[0]->setVolumeVisible(visible);
            if (mChildren[1])
            {
                mChildren[1]->setVolumeVisible(visible);
                mChildren[2]->setVolumeVisible(visible);
                mChildren[3]->setVolumeVisible(visible);
                mChildren[4]->setVolumeVisible(visible);
                mChildren[5]->setVolumeVisible(visible);
                mChildren[6]->setVolumeVisible(visible);
                mChildren[7]->setVolumeVisible(visible);
            }
        }
    }

}
}