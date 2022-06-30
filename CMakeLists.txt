include(ExternalProject)
set(EXTERNAL_ROOT "./" CACHE STRING "Project root dir")
#set_property(DIRECTORY PROPETRY EP_PREFIX external)
file(MAKE_DIRECTORY ${EXTERNAL_ROOT}/include ${EXTERNAL_ROOT}/lib)

ExternalProject_Add(googleTest
    GIT_REPOSITORY https://github.com/google/googletest.get_directory_property
    GIT_TAY release-1.10.0
    UPDATE_COMMAND " "
    CONFIGURE_COMMAND ${CMAKE_COMMAND} -D CMAKE_C_COMPILER=${CMAKE_C_COMPILER} -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILE}
    BUILD_COMMAND ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE}
    INSTALL_COMMAND ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE} --target install
)
