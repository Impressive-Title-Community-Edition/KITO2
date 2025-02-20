/*
-----------------------------------------------------------------------------
This source file is part of OGRE
    (Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/

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

#ifndef __VisualTest_H__
#define __VisualTest_H__

#include "SdkSample.h"

/** The base class for a visual test scene */
class VisualTest : public OgreBites::Sample
{
public:

    // resource group that will be automatically unloaded after the close of the sample
    Ogre::String TRANSIENT_RESOURCE_GROUP;

    VisualTest()
    {
        mInfo["Title"] = "Untitled Test";
        mInfo["Description"] = "";
        mInfo["Category"] = "Tests";
        mInfo["Thumbnail"] = "thumb_visual_tests.png";
        mInfo["Help"] = "";
        TRANSIENT_RESOURCE_GROUP = "VisualTestTransient";
        Ogre::ResourceGroupManager& rgm = Ogre::ResourceGroupManager::getSingleton();
        if (!rgm.resourceGroupExists(TRANSIENT_RESOURCE_GROUP))
            rgm.createResourceGroup(TRANSIENT_RESOURCE_GROUP);
    }

    virtual ~VisualTest(){}

    /** Adds a screenshot frame to the list - this should
     *    be done during setup of the test. */
    void addScreenshotFrame(unsigned int frame)
    {
        mScreenshotFrames.insert(frame);
    }

    /** Does some basic setup tasks */
#if (OGRE_PLATFORM == OGRE_PLATFORM_APPLE_IOS) || (OGRE_PLATFORM == OGRE_PLATFORM_ANDROID)
    virtual void _setup(Ogre::RenderWindow* window, OgreBites::InputContext inputContext, Ogre::FileSystemLayer* fsLayer, Ogre::OverlaySystem* overlaySys)
    {
        OgreBites::Sample::_setup(window, inputContext, fsLayer, overlaySys);
    }
#else
    virtual void _setup(Ogre::RenderWindow* window, OgreBites::InputContext inputContext, Ogre::FileSystemLayer* fsLayer, Ogre::OverlaySystem* overlaySys)
    {
        OgreBites::Sample::_setup(window, inputContext, fsLayer, overlaySys);
    }
#endif

    /** Clean up */
    virtual void _shutdown()
    {
        mSceneMgr->destroyCamera(mCamera);
        OgreBites::Sample::_shutdown();
    }

    /** set up the camera and viewport */
    virtual void setupView()
    {
        mCamera = mSceneMgr->createCamera("MainCamera");
        mViewport = mWindow->addViewport(mCamera);
        mCamera->setAspectRatio((Ogre::Real)mViewport->getActualWidth() / (Ogre::Real)mViewport->getActualHeight());
        mCamera->setNearClipDistance(0.5f);
        mCamera->setFarClipDistance(10000.f);
        mCamera->setPosition(Ogre::Vector3::ZERO);
        mCamera->setOrientation(Ogre::Quaternion::IDENTITY);
    }

    /** Unload all resources used by this sample */
    virtual void unloadResources()
    {
        Ogre::ResourceGroupManager::getSingleton().clearResourceGroup(TRANSIENT_RESOURCE_GROUP);
        Sample::unloadResources();
    }

    /** Changes aspect ratio to match any window resizings */
    virtual void windowResized(Ogre::RenderWindow* rw)
    {
        mCamera->setAspectRatio((Ogre::Real)mViewport->getActualWidth() / (Ogre::Real)mViewport->getActualHeight());
    }

    /** Returns whether or not a screenshot should be taken at the given frame */
    virtual bool isScreenshotFrame(unsigned int frame)
    {
        if (mScreenshotFrames.empty())
        {
            mDone = true;
        }
        else if (frame == *(mScreenshotFrames.begin()))
        {
            mScreenshotFrames.erase(mScreenshotFrames.begin());
            if (mScreenshotFrames.empty())
                mDone = true;
            return true;
        }
        return false;
    }

	/** Default frame started callback, advances animations */
    virtual bool frameStarted(const Ogre::FrameEvent& evt)
    {
        for(unsigned int i = 0; i < mAnimStateList.size(); ++i)
            mAnimStateList[i]->addTime(evt.timeSinceLastFrame);
        return true;
    }

protected:

    // a set of frame numbers at which to trigger screenshots
    std::set<unsigned int> mScreenshotFrames;

    // a list of animation states to automatically update
    std::vector<Ogre::AnimationState*> mAnimStateList;

    // The camera for this sample
    Ogre::Camera* mCamera;
    // The viewport for this sample
    Ogre::Viewport* mViewport;

};

#endif
