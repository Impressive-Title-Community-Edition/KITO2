#-------------------------------------------------------------------
# This file is part of the CMake build system for OGRE
#     (Object-oriented Graphics Rendering Engine)
# For the latest info, see http://www.ogre3d.org/
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

# Configure Tests build
if (OGRE_BUILD_TESTS)


  if (CppUnit_FOUND)
	# unit tests are go!
	include_directories(${CMAKE_CURRENT_SOURCE_DIR}/OgreMain/include)
	
	set(HEADER_FILES 
		OgreMain/include/BitwiseTests.h
		OgreMain/include/DualQuaternionTests.h
		OgreMain/include/EdgeBuilderTests.h
		OgreMain/include/FileSystemArchiveTests.h
		OgreMain/include/MeshWithoutIndexDataTests.h
		OgreMain/include/PixelFormatTests.h
		OgreMain/include/RadixSortTests.h
		OgreMain/include/RenderSystemCapabilitiesTests.h
		OgreMain/include/StreamSerialiserTests.h
		OgreMain/include/StringTests.h
		OgreMain/include/Suite.h
		OgreMain/include/UseCustomCapabilitiesTests.h
		OgreMain/include/VectorTests.h
	)
	set(SOURCE_FILES 
		OgreMain/src/BitwiseTests.cpp
		OgreMain/src/DualQuaternionTests.cpp
		OgreMain/src/EdgeBuilderTests.cpp
		OgreMain/src/FileSystemArchiveTests.cpp
		OgreMain/src/MeshWithoutIndexDataTests.cpp
		OgreMain/src/PixelFormatTests.cpp
		OgreMain/src/RadixSort.cpp
		OgreMain/src/RenderSystemCapabilitiesTests.cpp
		OgreMain/src/StreamSerialiserTests.cpp
		OgreMain/src/StringTests.cpp
		OgreMain/src/Suite.cpp
		OgreMain/src/UseCustomCapabilitiesTests.cpp
		OgreMain/src/VectorTests.cpp
		src/main.cpp
	)
	if (OGRE_CONFIG_ENABLE_ZIP)
	  set(HEADER_FILES ${HEADER_FILES} OgreMain/include/ZipArchiveTests.h)
	  set(SOURCE_FILES ${SOURCE_FILES} OgreMain/src/ZipArchiveTests.cpp)
	  file(COPY OgreMain/misc DESTINATION OgreMain/)
	endif ()

	if (OGRE_BUILD_COMPONENT_PAGING)
	  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Components/Paging/include)
	  ogre_add_component_include_dir(Paging)
	  
	  set(OGRE_LIBRARIES ${OGRE_LIBRARIES} OgrePaging)
	  set(HEADER_FILES ${HEADER_FILES}
	    Components/Paging/include/PageCoreTests.h
	  )
	  set(SOURCE_FILES ${SOURCE_FILES}
	    Components/Paging/src/PageCoreTests.cpp
	  )
	endif ()
	if (OGRE_BUILD_COMPONENT_TERRAIN)
	  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Components/Terrain/include)
	  ogre_add_component_include_dir(Terrain)
	  
	  set(OGRE_LIBRARIES ${OGRE_LIBRARIES} OgreTerrain)
	  set(HEADER_FILES ${HEADER_FILES}
	    Components/Terrain/include/TerrainTests.h
	  )
	  set(SOURCE_FILES ${SOURCE_FILES}
	    Components/Terrain/src/TerrainTests.cpp
	  )
	endif ()
	if (OGRE_BUILD_COMPONENT_PROPERTY)
	  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Components/Property/include
	    ${OGRE_SOURCE_DIR}/Components/Property/include)
	  
	  set(OGRE_LIBRARIES ${OGRE_LIBRARIES} OgreProperty)
	  set(HEADER_FILES ${HEADER_FILES}
	    Components/Property/include/PropertyTests.h
	  )
	  set(SOURCE_FILES ${SOURCE_FILES}
	    Components/Property/src/PropertyTests.cpp
	  )
	endif ()
	
    if (OGRE_BUILD_COMPONENT_OVERLAY)
	  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Components/Overlay/include
	    ${OGRE_SOURCE_DIR}/Components/Overlay/include)
	  
	  set(OGRE_LIBRARIES ${OGRE_LIBRARIES} OgreOverlay)
	endif ()
	add_executable(Test_Ogre WIN32 ${HEADER_FILES} ${SOURCE_FILES} ${RESOURCE_FILES} )
	ogre_config_sample_exe(Test_Ogre)
	target_link_libraries(Test_Ogre ${OGRE_LIBRARIES} ${CppUnit_LIBRARIES})
	if(APPLE AND NOT OGRE_BUILD_PLATFORM_APPLE_IOS)
        set(OGRE_BUILT_FRAMEWORK "$(PLATFORM_NAME)/$(CONFIGURATION)")
        set(OGRE_TEST_CONTENTS_PATH ${OGRE_BINARY_DIR}/bin/$(CONFIGURATION)/Test_Ogre.app/Contents)
        add_custom_command(TARGET Test_Ogre POST_BUILD
            COMMAND mkdir ARGS -p ${OGRE_TEST_CONTENTS_PATH}/Resources/Media/CustomCapabilities
            COMMAND ditto 
            ${OGRE_SOURCE_DIR}/Tests/Media/CustomCapabilities/* ${OGRE_TEST_CONTENTS_PATH}/Resources/Media/CustomCapabilities
            )
            
        add_custom_command(TARGET Test_Ogre POST_BUILD
            COMMAND mkdir ARGS -p ${OGRE_TEST_CONTENTS_PATH}/Resources
            COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/bin/plugins.cfg 
            ${OGRE_TEST_CONTENTS_PATH}/Resources/
            COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/bin/resources.cfg 
            ${OGRE_TEST_CONTENTS_PATH}/Resources/
            COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/bin/samples.cfg 
            ${OGRE_TEST_CONTENTS_PATH}/Resources/
            COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/bin/quakemap.cfg 
            ${OGRE_TEST_CONTENTS_PATH}/Resources/
            COMMAND ln ARGS -s -f ${OGRE_SOURCE_DIR}/Samples/Media/materials
            ${OGRE_TEST_CONTENTS_PATH}/Resources/Media/materials
            COMMAND ln ARGS -s -f ${OGRE_SOURCE_DIR}/Samples/Media/models
            ${OGRE_TEST_CONTENTS_PATH}/Resources/Media/models
            COMMAND ln ARGS -s -f ${OGRE_SOURCE_DIR}/Tests/OgreMain/misc
            ${OGRE_TEST_CONTENTS_PATH}/Resources/Media/misc
            COMMAND ditto 
            ${OGRE_SOURCE_DIR}/Samples/Common/misc/SampleBrowser_OSX.icns ${OGRE_TEST_CONTENTS_PATH}/Resources
		)

        add_custom_command(TARGET Test_Ogre POST_BUILD
            COMMAND mkdir ARGS -p ${OGRE_TEST_CONTENTS_PATH}/Frameworks
            COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Ogre.framework
            ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
            COMMAND ln ARGS -s -f ${Cg_LIBRARY_REL}
            ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
            )
        add_custom_command(TARGET Test_Ogre POST_BUILD
            COMMAND mkdir ARGS -p ${OGRE_TEST_CONTENTS_PATH}/Plugins)
        if (OGRE_BUILD_RENDERSYSTEM_GL)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/RenderSystem_GL.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif ()
        if (OGRE_BUILD_RENDERSYSTEM_GL3PLUS)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/RenderSystem_GL3Plus.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif ()
        if (OGRE_BUILD_PLUGIN_BSP)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_BSPSceneManager.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_PLUGIN_CG)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_CgProgramManager.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_PLUGIN_OCTREE)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_OctreeSceneManager.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_PLUGIN_PCZ)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_PCZSceneManager.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_OctreeZone.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_PLUGIN_PFX)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/Plugin_ParticleFX.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()

        # Components
        if (OGRE_BUILD_COMPONENT_PAGING)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgrePaging.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_COMPONENT_PROPERTY)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgreProperty.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_COMPONENT_RTSHADERSYSTEM)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgreRTShaderSystem.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_COMPONENT_TERRAIN)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgreTerrain.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_COMPONENT_VOLUME)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgreVolume.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
        if (OGRE_BUILD_COMPONENT_OVERLAY)
            add_custom_command(TARGET Test_Ogre POST_BUILD
                COMMAND ln ARGS -s -f ${OGRE_BINARY_DIR}/lib/${OGRE_BUILT_FRAMEWORK}/OgreOverlay.framework
                ${OGRE_TEST_CONTENTS_PATH}/Frameworks/
                )
        endif()
    endif()
  endif ()
  
  
  # Configure interactive test build
  if (OIS_FOUND)
 
	  include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Common/include)

	  # Make sure all plugins are built
	  if (OGRE_BUILD_PLUGIN_OCTREE)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_OctreeSceneManager)
	  endif ()
	  if (OGRE_BUILD_PLUGIN_BSP)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_BSPSceneManager)
	  endif ()
	  if (OGRE_BUILD_PLUGIN_CG)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_CgProgramManager)
	  endif (OGRE_BUILD_PLUGIN_CG)
	  if (OGRE_BUILD_PLUGIN_PFX)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_ParticleFX)
	  endif ()
	  
	  if (OGRE_BUILD_PLUGIN_PCZ)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_PCZSceneManager)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} Plugin_OctreeZone)
	  endif ()
	  
	  if (OGRE_BUILD_RENDERSYSTEM_D3D9)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_Direct3D9)
	  endif ()
	  if (OGRE_BUILD_RENDERSYSTEM_D3D11)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_Direct3D11)
	  endif ()
	  if (OGRE_BUILD_RENDERSYSTEM_GL)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_GL)
	  endif ()
	  if (OGRE_BUILD_RENDERSYSTEM_GLPLUS)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_GL3Plus)
	  endif ()
	  if (OGRE_BUILD_RENDERSYSTEM_GLES)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_GLES)
	  endif ()
	  if (OGRE_BUILD_RENDERSYSTEM_GLES2)
		set(TEST_DEPENDENCIES ${TEST_DEPENDENCIES} RenderSystem_GLES2)
	  endif ()

	  if (OGRE_STATIC)
		# Static linking means we need to directly use plugins
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/BSPSceneManager/include)
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/CgProgramManager/include)
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/OctreeSceneManager/include)
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/OctreeZone/include)
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/ParticleFX/include)
		include_directories(${OGRE_SOURCE_DIR}/PlugIns/PCZSceneManager/include)
		include_directories(${OGRE_SOURCE_DIR}/RenderSystems/Direct3D9/include)
		include_directories(${OGRE_SOURCE_DIR}/RenderSystems/Direct3D11/include)
		include_directories(${OGRE_SOURCE_DIR}/RenderSystems/GLES/include)
		include_directories(
		    ${OGRE_SOURCE_DIR}/RenderSystems/GLES2/include
			${OGRE_SOURCE_DIR}/RenderSystems/GLES2/src/GLSLES/include
		)
		include_directories(
			${OGRE_SOURCE_DIR}/RenderSystems/GL/include
			${OGRE_SOURCE_DIR}/RenderSystems/GL/src/GLSL/include
			${OGRE_SOURCE_DIR}/RenderSystems/GL/src/atifs/include
			${OGRE_SOURCE_DIR}/RenderSystems/GL/src/nvparse
			)

		# Link to all enabled plugins
		set(OGRE_LIBRARIES ${OGRE_LIBRARIES} ${TEST_DEPENDENCIES})

		# Need to include resource files so that icons are linked
		if (WIN32)
			set(RESOURCE_FILES
				${OGRE_SOURCE_DIR}/OgreMain/src/WIN32/resource.h
				${OGRE_SOURCE_DIR}/OgreMain/src/WIN32/OgreWin32Resources.rc
				${OGRE_SOURCE_DIR}/OgreMain/src/WIN32/winres.h
			)
			source_group(Resources FILES ${RESOURCE_FILES})
		endif ()	
	  endif ()

	  # PlayPen gets included always
	add_subdirectory(PlayPen)

	# add VisualTests directory
	add_subdirectory(VisualTests)

    endif (OIS_FOUND)

endif (OGRE_BUILD_TESTS)
