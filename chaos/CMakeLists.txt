############################################################################
# CMakeLists.txt file for building ROOT chaos package
############################################################################
include_directories(${CHAOS_INCLUDE_DIRS})
link_directories(${CHAOS_LIB_DIR})
set(libname Chaos)
ROOT_GENERATE_DICTIONARY(Chaos ${CMAKE_CURRENT_SOURCE_DIR}/inc/rootUtil.h MODULE ${libname} LINKDEF LinkDef.h)

#MESSAGE(STATUS "Chaos include ${CHAOS_INCLUDE_DIRS} LIB ${CHAOS_LIBRARIES} .")
ROOT_LINKER_LIBRARY(${libname} *.cpp LIBRARIES DEPENDENCIES ${CHAOS_LIBRARIES} Core RIO Net Hist Graf Graf3d Gpad Tree Rint Postscript Matrix MathCore Thread MultiProc)

#ROOT_OBJECT_LIBRARY(${libname} *.cpp)
#ROOT_STANDARD_LIBRARY_PACKAGE(${libname})

ROOT_INSTALL_HEADERS()
