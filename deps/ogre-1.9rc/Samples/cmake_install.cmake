# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/dev/KITO2/deps/ogre-1.9rc/sdk")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/ExampleApplication.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/ExampleFrameListener.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/ExampleLoadingBar.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/InputContext.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/OgreStaticPluginLoader.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/Sample.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/SampleContext.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/SamplePlugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/SdkCameraMan.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/SdkSample.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples/Common/include/SdkTrays.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/BezierPatch/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/CameraTrack/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Character/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Compositor/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/DualQuaternion/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/DynTex/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/FacialAnimation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Grass/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Instancing/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Lighting/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/MeshLod/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/NewInstancing/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/OceanDemo/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/ParticleFX/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/ShaderSystem/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/ShaderSystemTexturedFog/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/ShaderSystemMultiLight/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Shadows/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SkeletalAnimation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SkyBox/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SkyDome/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SkyPlane/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Smoke/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SphereMapping/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Terrain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/EndlessWorld/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Tesselation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/TextureFX/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/TextureArray/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Transparency/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/VolumeTex/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/VolumeCSG/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/VolumeTerrain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Water/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/BSP/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/CelShading/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/DeferredShading/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/CubeMapping/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Dot3Bump/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Fresnel/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Isosurf/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/ParticleGS/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/SSAO/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Browser/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

