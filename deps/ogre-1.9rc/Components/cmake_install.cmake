# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/Components

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/Paging/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/Property/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/Terrain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/RTShaderSystem/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/Volume/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/Overlay/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

