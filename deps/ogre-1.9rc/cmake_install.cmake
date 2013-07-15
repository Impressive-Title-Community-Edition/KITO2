# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/include/OgreBuildSettings.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/debug/resources_d.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/debug/plugins_d.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/debug/samples_d.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/debug/tests_d.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/debug/quakemap_d.cfg"
      )
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE FILE FILES
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/resources.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/plugins.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/samples.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/tests.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/quakemap.cfg"
      )
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee]|[Nn][Oo][Nn][Ee]|)$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/resources.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/plugins.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/samples.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/tests.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/quakemap.cfg"
      )
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE FILE FILES
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/resources.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/plugins.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/samples.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/tests.cfg"
      "C:/dev/KITO2/deps/ogre-1.9rc/inst/bin/release/quakemap.cfg"
      )
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/OgreMain/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/RenderSystems/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/PlugIns/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Components/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Tools/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Tools/XSIExport/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Docs/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/Samples/Media/cmake_install.cmake")
  INCLUDE("C:/dev/KITO2/deps/ogre-1.9rc/CMake/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "C:/dev/KITO2/deps/ogre-1.9rc/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "C:/dev/KITO2/deps/ogre-1.9rc/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
