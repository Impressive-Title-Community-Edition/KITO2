# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Samples

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
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/BezierPatch/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/CameraTrack/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Character/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Compositor/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/DualQuaternion/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/DynTex/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/FacialAnimation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Grass/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Instancing/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Lighting/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/MeshLod/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/NewInstancing/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/OceanDemo/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/ParticleFX/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/PNTrianglesTessellation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/ShaderSystem/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/ShaderSystemTexturedFog/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/ShaderSystemMultiLight/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Shadows/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SkeletalAnimation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SkyBox/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SkyDome/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SkyPlane/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Smoke/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SphereMapping/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Terrain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/EndlessWorld/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Tesselation/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/TextureFX/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/TextureArray/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Transparency/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/VolumeTex/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/VolumeCSG/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/VolumeTerrain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Water/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/BSP/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/CelShading/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/DeferredShading/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/CubeMapping/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Dot3Bump/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Fresnel/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Isosurf/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/ParticleGS/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/SSAO/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc-2/Samples/Browser/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

