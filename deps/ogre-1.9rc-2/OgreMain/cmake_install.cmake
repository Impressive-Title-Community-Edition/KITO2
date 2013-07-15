# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/dev/KITO2/deps/ogre-1.9rc-2/sdk")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/Release/OgreMain.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Release/OgreMain.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/RelWithDebInfo/OgreMain.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/RelWithDebInfo/OgreMain.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/MinSizeRel/OgreMain.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/MinSizeRel/OgreMain.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/Debug/OgreMain_d.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Debug/OgreMain_d.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Debug/OgreMain_d.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/RelWithDebInfo/OgreMain.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/asm_math.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Ogre.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAlignedAllocator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAnimable.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAnimation.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAnimationState.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAnimationTrack.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAny.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreArchive.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreArchiveFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreArchiveManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAtomicWrappers.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAutoParamDataSource.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreAxisAlignedBox.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBillboard.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBillboardChain.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBillboardParticleRenderer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBillboardSet.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBitwise.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBlendMode.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreBone.h"
    "C:/dev/KITO2/deps/ogre-1.9rc-2/include/OgreBuildSettings.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCamera.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCodec.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreColourValue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCommon.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositionPass.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositionTargetPass.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositionTechnique.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositor.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositorChain.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositorLogic.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositorInstance.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCompositorManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreConfig.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreConfigDialog.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreConfigFile.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreConfigOptionMap.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreController.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreControllerManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreConvexBody.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreCustomCompositionPass.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDataStream.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDefaultHardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDeflate.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDepthBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDistanceLodStrategy.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDualQuaternion.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDynLib.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDynLibManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreEdgeListBuilder.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreEntity.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreErrorDialog.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreException.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreExternalTextureSource.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreExternalTextureSourceManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFactoryObj.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFileSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFileSystemLayer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFrameListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFrustum.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreGpuProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreGpuProgramParams.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreGpuProgramUsage.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareCounterBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareIndexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareOcclusionQuery.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwarePixelBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareUniformBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHardwareVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHeaderPrefix.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHeaderSuffix.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHighLevelGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreHighLevelGpuProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreImage.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreImageCodec.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/src/OgreImageResampler.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceBatch.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceBatchHW.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceBatchHW_VTF.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceBatchShader.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceBatchVTF.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstancedGeometry.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstancedEntity.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreInstanceManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreIteratorRange.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreIteratorWrapper.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreIteratorWrappers.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreKeyFrame.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLight.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLodConfig.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLodListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLodStrategy.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLodStrategyManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLog.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreLogManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreManualObject.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMaterial.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMaterialManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMaterialSerializer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMath.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMatrix3.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMatrix4.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryAllocatedObject.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryAllocatorConfig.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryNedAlloc.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryNedPooling.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryStdAlloc.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemorySTLAllocator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMemoryTracker.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMesh.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMeshFileFormat.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMeshManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMeshSerializer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMeshSerializerImpl.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMovableObject.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreMovablePlane.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreNode.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreNumerics.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreOptimisedUtil.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticle.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleEmitterCommands.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleIterator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleScriptCompiler.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleSystemManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreParticleSystemRenderer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePass.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePatchMesh.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePatchSurface.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/src/OgrePixelConversions.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePixelCountLodStrategy.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePixelFormat.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePlane.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePlaneBoundedVolume.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePlatform.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePlatformInformation.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePlugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePolygon.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePose.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePredefinedControllers.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePrefabFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgrePrerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreProfiler.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreProgressiveMeshGenerator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreQuaternion.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreQueuedProgressiveMeshGenerator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRadixSort.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRay.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRectangle2D.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderable.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderObjectListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderOperation.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderQueue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderQueueInvocation.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderQueueListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderQueueSortingGrouping.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderSystemCapabilities.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderSystemCapabilitiesManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderSystemCapabilitiesSerializer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderTarget.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderTargetListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderToVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRenderWindow.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreResource.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreResourceBackgroundQueue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreResourceGroupManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreResourceManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRibbonTrail.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRoot.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreRotationalSpline.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSceneManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSceneManagerEnumerator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSceneNode.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSceneQuery.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreScriptCompiler.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreScriptLexer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreScriptLoader.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreScriptParser.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreScriptTranslator.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSearchOps.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSerializer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCameraSetup.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCameraSetupFocused.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCameraSetupLiSPSM.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCameraSetupPlaneOptimal.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCameraSetupPSSM.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowCaster.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowTextureManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreShadowVolumeExtrudeProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSharedPtr.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/src/OgreSIMDHelper.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSimpleRenderable.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSimpleSpline.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSingleton.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSkeleton.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSkeletonFileFormat.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSkeletonInstance.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSkeletonManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSkeletonSerializer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSmallVector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSphere.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSpotShadowFadePng.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStableHeaders.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStaticFaceGroup.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStaticGeometry.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStdHeaders.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStreamSerialiser.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreString.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStringConverter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStringInterface.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreStringVector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSubEntity.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreSubMesh.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTagPoint.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTangentSpaceCalc.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTechnique.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTextureManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTextureUnitState.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreTimer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreUnifiedHighLevelGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreUserObjectBindings.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreUTFString.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreVector2.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreVector3.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreVector4.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreVertexBoneAssignment.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreVertexIndexData.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreViewport.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreWindowEventUtilities.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreWireBoundingBox.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreWorkQueue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadDefines.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadHeaders.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreDefaultWorkQueue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadDefinesBoost.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadHeadersBoost.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreFreeImageCodec.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreDDSCodec.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/OgreZip.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/WIN32" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/WIN32/OgreConfigDialogImp.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/WIN32/OgreErrorDialogImp.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/WIN32/OgreTimerImp.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/WIN32/OgreMinGWSupport.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Threading" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadDefines.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadHeaders.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreDefaultWorkQueue.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadDefinesBoost.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreThreadHeadersBoost.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/OgreMain/include/Threading/OgreDefaultWorkQueueStandard.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

