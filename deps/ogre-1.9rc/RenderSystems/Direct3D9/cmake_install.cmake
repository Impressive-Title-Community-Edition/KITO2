# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9

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
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Release/RenderSystem_Direct3D9.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Release/RenderSystem_Direct3D9.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/RelWithDebInfo/RenderSystem_Direct3D9.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/RenderSystem_Direct3D9.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/MinSizeRel/RenderSystem_Direct3D9.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/MinSizeRel/RenderSystem_Direct3D9.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Debug/RenderSystem_Direct3D9_d.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/RenderSystem_Direct3D9_d.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/RenderSystem_Direct3D9_d.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/RenderSystem_Direct3D9.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/Direct3D9" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9DepthBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Device.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9DeviceManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Driver.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9DriverList.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9GpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9GpuProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HardwareIndexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HardwareOcclusionQuery.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HardwarePixelBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HardwareVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HLSLProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9HLSLProgramFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Mappings.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9MultiRenderTarget.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Plugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Prerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9RenderSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9RenderWindow.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Resource.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9ResourceManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9Texture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9TextureManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9VertexDeclaration.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9VideoMode.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D9/include/OgreD3D9VideoModeList.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

