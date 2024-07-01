cmake_minimum_required(VERSION 3.22.0)
project(zmdeps)

#set(CMAKE_CXX_COMPILER "/usr/bin/g++" CACHE STRING "It's must be cache string. if not cross-compiler may be error.")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE "release")
set(EXTERNAL_ROOT "./deps" CACHE STRING "Project root dir")

set_property(DIRECTORY PROPERTY EP_PREFIX external)
file(MAKE_DIRECTORY ${EXTERNAL_ROOT}/include ${EXTERNAL_ROOT}/lib)

include(ExternalProject)
include(cmake/ffmpeg.cmake)
include(cmake/gflags.cmake)
include(cmake/googletest.cmake)