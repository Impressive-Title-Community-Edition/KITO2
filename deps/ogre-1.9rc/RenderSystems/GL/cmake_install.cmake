# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Release/RenderSystem_GL.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Release/RenderSystem_GL.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/RelWithDebInfo/RenderSystem_GL.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/RenderSystem_GL.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/MinSizeRel/RenderSystem_GL.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/MinSizeRel/RenderSystem_GL.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Debug/RenderSystem_GL_d.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/RenderSystem_GL_d.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/RenderSystem_GL_d.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/RenderSystem_GL.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLATIFSInit.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLContext.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLDefaultHardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLDepthBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLFBOMultiRenderTarget.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLFBORenderTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLFrameBufferObject.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLGpuNvparseProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLGpuProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLHardwareBufferManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLHardwareIndexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLHardwareOcclusionQuery.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLHardwarePixelBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLHardwareVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLPBRenderTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLPBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLPixelFormat.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLPlugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLPrerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLRenderSystem.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLRenderTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLRenderToVertexBuffer.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLSupport.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreGLTextureManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLExtSupport.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLLinkProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLLinkProgramManager.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLPreprocessor.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLProgramFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/OgreGLSLProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/atifs/include/ATI_FS_GLGpuProgram.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/atifs/include/Compiler2Pass.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/atifs/include/ps_1_4.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/macro.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/nvparse_errors.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/nvparse_externs.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/nvparse.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/_ps1.0_parser.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/ps1.0_program.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/rc1.0_combiners.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/rc1.0_final.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/rc1.0_general.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/_rc1.0_parser.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/rc1.0_register.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/ts1.0_inst.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/ts1.0_inst_list.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/_ts1.0_parser.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/vs1.0_inst.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/vs1.0_inst_list.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/nvparse/_vs1.0_parser.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreWin32Context.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreWin32GLSupport.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreWin32Prerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreWin32RenderTexture.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/OgreWin32Window.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/win32/OgreGLUtil.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE DIRECTORY FILES "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/include/GL")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/RenderSystems/GL" TYPE DIRECTORY FILES "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/RenderSystems/GL/src/GLSL/include/")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

