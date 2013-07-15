# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/CMake" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Packages/FindOIS.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Packages/FindOGRE.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/FindPkgMacros.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/MacroLogFeature.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/PreprocessorUtils.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/PrecompiledHeader.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/OgreAddTargets.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/OgreConfigTargets.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/OgreGetVersion.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Utils/OgreFindFrameworks.cmake"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Templates/VisualStudioUserFile.vcproj.user.in"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/CMake/Templates/VisualStudioUserFile.vcxproj.user.in"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

