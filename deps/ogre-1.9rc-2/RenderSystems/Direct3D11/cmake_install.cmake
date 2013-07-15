# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/Release/RenderSystem_Direct3D11.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Release/RenderSystem_Direct3D11.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/RelWithDebInfo/RenderSystem_Direct3D11.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/RelWithDebInfo/RenderSystem_Direct3D11.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/MinSizeRel/RenderSystem_Direct3D11.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/MinSizeRel/RenderSystem_Direct3D11.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/lib/Debug/RenderSystem_Direct3D11_d.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Debug/RenderSystem_Direct3D11_d.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/Debug/RenderSystem_Direct3D11_d.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc-2/bin/RelWithDebInfo/RenderSystem_Direct3D11.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/Direct3D11" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11DepthBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Device.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Driver.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11DriverList.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11GpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11GpuProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareIndexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareOcclusionQuery.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwarePixelBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareUniformBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HardwareVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HLSLProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11HLSLProgramFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Mappings.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11MultiRenderTarget.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Plugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Prerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11RenderSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11RenderToVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11RenderWindow.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11Texture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11TextureManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11VertexDeclaration.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11VideoMode.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/Direct3D11/include/OgreD3D11VideoModeList.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

