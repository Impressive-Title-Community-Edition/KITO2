# Install script for directory: C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX

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
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Release/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Release/Plugin_ParticleFX.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Release" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Release/Plugin_ParticleFX.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/RelWithDebInfo/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/RelWithDebInfo/Plugin_ParticleFX.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/Plugin_ParticleFX.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/MinSizeRel/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/MinSizeRel/Plugin_ParticleFX.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/MinSizeRel" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/MinSizeRel/Plugin_ParticleFX.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/Debug/opt" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/dev/KITO2/deps/ogre-1.9rc/lib/Debug/Plugin_ParticleFX_d.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE SHARED_LIBRARY FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/Plugin_ParticleFX_d.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/Debug" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/Debug/Plugin_ParticleFX_d.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/RelWithDebInfo" TYPE FILE FILES "C:/dev/KITO2/deps/ogre-1.9rc/bin/RelWithDebInfo/Plugin_ParticleFX.pdb")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OGRE/Plugins/ParticleFX" TYPE FILE FILES
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreAreaEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreBoxEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreBoxEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourFaderAffector2.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory2.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourFaderAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourFaderAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourImageAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourImageAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourInterpolatorAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreColourInterpolatorAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreCylinderEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreCylinderEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreDeflectorPlaneAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreDirectionRandomiserAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreEllipsoidEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreEllipsoidEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreHollowEllipsoidEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreLinearForceAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreLinearForceAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreParticleFXPlugin.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreParticleFXPrerequisites.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgrePointEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgrePointEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreRingEmitterFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreRingEmitter.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreRotationAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreRotationAffector.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreScaleAffectorFactory.h"
    "C:/dev/KITO2/source-deps/ogre_src_v1-9-0RC1/PlugIns/ParticleFX/include/OgreScaleAffector.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

