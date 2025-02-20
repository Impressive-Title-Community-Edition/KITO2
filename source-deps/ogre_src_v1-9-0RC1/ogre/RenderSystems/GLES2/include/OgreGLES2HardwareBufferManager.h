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

#ifndef __GLES2HardwareBufferManager_H__
#define __GLES2HardwareBufferManager_H__

#include "OgreGLES2Prerequisites.h"
#include "OgreHardwareBufferManager.h"

namespace Ogre {
    // Default threshold at which glMapBuffer becomes more efficient than glBufferSubData (32k?)
    #   define OGRE_GL_DEFAULT_MAP_BUFFER_THRESHOLD (1024 * 32)

	class GLES2StateCacheManager;

    /** Implementation of HardwareBufferManager for OpenGL ES. */
    class _OgreGLES2Export GLES2HardwareBufferManagerBase : public HardwareBufferManagerBase
    {
        protected:
            char* mScratchBufferPool;
            OGRE_MUTEX(mScratchMutex)
            size_t mMapBufferThreshold;
			GLES2StateCacheManager* mStateCacheManager;
            /// Internal method for creates a new vertex declaration, may be overridden by certain rendering APIs
            VertexDeclaration* createVertexDeclarationImpl(void);
            /// Internal method for destroys a vertex declaration, may be overridden by certain rendering APIs
            void destroyVertexDeclarationImpl(VertexDeclaration* decl);

        public:
            GLES2HardwareBufferManagerBase();
            virtual ~GLES2HardwareBufferManagerBase();
            /// Creates a vertex buffer
            HardwareVertexBufferSharedPtr createVertexBuffer(size_t vertexSize,
                size_t numVerts, HardwareBuffer::Usage usage, bool useShadowBuffer = false);
            /// Create a hardware vertex buffer
            HardwareIndexBufferSharedPtr createIndexBuffer(
                HardwareIndexBuffer::IndexType itype, size_t numIndexes,
                HardwareBuffer::Usage usage, bool useShadowBuffer = false);
	        /// Create a render to vertex buffer
    	    RenderToVertexBufferSharedPtr createRenderToVertexBuffer();
            HardwareUniformBufferSharedPtr
            createUniformBuffer(size_t sizeBytes, HardwareBuffer::Usage usage, bool useShadowBuffer, const String& name = "");
            /// Create a uniform buffer
            HardwareUniformBufferSharedPtr createUniformBuffer(size_t sizeBytes, HardwareBuffer::Usage usage,
                                                               bool useShadowBuffer, size_t binding, const String& name = "");
            HardwareCounterBufferSharedPtr createCounterBuffer(size_t sizeBytes,
                                                               HardwareBuffer::Usage usage = HardwareBuffer::HBU_DYNAMIC_WRITE_ONLY_DISCARDABLE,
                                                               bool useShadowBuffer = false, const String& name = "");

            /// Utility function to get the correct GL usage based on HBU's
            static GLenum getGLUsage(unsigned int usage);

            /// Utility function to get the correct GL type based on VET's
            static GLenum getGLType(unsigned int type);

            /** Allocator method to allow us to use a pool of memory as a scratch
                area for hardware buffers. This is because glMapBuffer is incredibly
                inefficient, seemingly no matter what options we give it. So for the
                period of lock/unlock, we will instead allocate a section of a local
                memory pool, and use glBufferSubDataARB / glGetBufferSubDataARB
                instead.
            */
            void* allocateScratch(uint32 size);

            /// @see allocateScratch
            void deallocateScratch(void* ptr);

    		/** Threshold after which glMapBuffer is used and not glBufferSubData
            */
            size_t getGLMapBufferThreshold() const;
            void setGLMapBufferThreshold( const size_t value );
			GLES2StateCacheManager * getStateCacheManager() { return mStateCacheManager; }

    };

	/// GLES2HardwareBufferManagerBase as a Singleton
	class _OgreGLES2Export GLES2HardwareBufferManager : public HardwareBufferManager
	{
	public:
		GLES2HardwareBufferManager()
			: HardwareBufferManager(OGRE_NEW GLES2HardwareBufferManagerBase()) 
		{

		}
		~GLES2HardwareBufferManager()
		{
			OGRE_DELETE mImpl;
		}

		/// Utility function to get the correct GL usage based on HBU's
		static GLenum getGLUsage(unsigned int usage) 
            { return GLES2HardwareBufferManagerBase::getGLUsage(usage); }

		/// Utility function to get the correct GL type based on VET's
		static GLenum getGLType(unsigned int type)
            { return GLES2HardwareBufferManagerBase::getGLType(type); }

		/** Allocator method to allow us to use a pool of memory as a scratch
		area for hardware buffers. This is because glMapBuffer is incredibly
		inefficient, seemingly no matter what options we give it. So for the
		period of lock/unlock, we will instead allocate a section of a local
		memory pool, and use glBufferSubDataARB / glGetBufferSubDataARB
		instead.
		*/
		void* allocateScratch(uint32 size)
		{
			return static_cast<GLES2HardwareBufferManagerBase*>(mImpl)->allocateScratch(size);
		}

		/// @see allocateScratch
		void deallocateScratch(void* ptr)
		{
			static_cast<GLES2HardwareBufferManagerBase*>(mImpl)->deallocateScratch(ptr);
		}

        /** Threshold after which glMapBuffer is used and not glBufferSubData
		*/
		size_t getGLMapBufferThreshold() const
		{
			return static_cast<GLES2HardwareBufferManagerBase*>(mImpl)->getGLMapBufferThreshold();
		}
		void setGLMapBufferThreshold( const size_t value )
		{
			static_cast<GLES2HardwareBufferManagerBase*>(mImpl)->setGLMapBufferThreshold(value);
		}
	};

}

#endif
