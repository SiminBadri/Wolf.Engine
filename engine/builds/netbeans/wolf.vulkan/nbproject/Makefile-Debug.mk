#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/1dd5d910/dllmain.o \
	${OBJECTDIR}/_ext/1dd5d910/w_game.o \
	${OBJECTDIR}/_ext/1dd5d910/w_graphics_device_manager.o \
	${OBJECTDIR}/_ext/1dd5d910/w_vulkan_pch.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-m64
CXXFLAGS=-m64

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../../../../bin/x64/Debug/GNU-Linux -L../../../dependencies/vulkan/sdk/linux/lib -lvulkan -lwolf.system

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/../../../../../bin/x64/${CND_CONF}/${CND_PLATFORM}/libwolf.vulkan.${CND_DLIB_EXT}

${CND_DISTDIR}/../../../../../bin/x64/${CND_CONF}/${CND_PLATFORM}/libwolf.vulkan.${CND_DLIB_EXT}: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/../../../../../bin/x64/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/../../../../../bin/x64/${CND_CONF}/${CND_PLATFORM}/libwolf.vulkan.${CND_DLIB_EXT} ${OBJECTFILES} ${LDLIBSOPTIONS} -shared -fPIC

${OBJECTDIR}/_ext/1dd5d910/dllmain.o: ../../../src/wolf.render/wolf.vulkan/dllmain.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1dd5d910
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../src/wolf.system -I../../../dependencies/vulkan/sdk/linux/include -std=c++14 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1dd5d910/dllmain.o ../../../src/wolf.render/wolf.vulkan/dllmain.cpp

${OBJECTDIR}/_ext/1dd5d910/w_game.o: ../../../src/wolf.render/wolf.vulkan/w_game.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1dd5d910
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../src/wolf.system -I../../../dependencies/vulkan/sdk/linux/include -std=c++14 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1dd5d910/w_game.o ../../../src/wolf.render/wolf.vulkan/w_game.cpp

${OBJECTDIR}/_ext/1dd5d910/w_graphics_device_manager.o: ../../../src/wolf.render/wolf.vulkan/w_graphics_device_manager.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1dd5d910
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../src/wolf.system -I../../../dependencies/vulkan/sdk/linux/include -std=c++14 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1dd5d910/w_graphics_device_manager.o ../../../src/wolf.render/wolf.vulkan/w_graphics_device_manager.cpp

${OBJECTDIR}/_ext/1dd5d910/w_vulkan_pch.o: ../../../src/wolf.render/wolf.vulkan/w_vulkan_pch.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/1dd5d910
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../src/wolf.system -I../../../dependencies/vulkan/sdk/linux/include -std=c++14 -fPIC  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/1dd5d910/w_vulkan_pch.o ../../../src/wolf.render/wolf.vulkan/w_vulkan_pch.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
