# versoin 1
#set(GFLAG_ROOT          ${EXTERNAL_ROOT}/gflags)
#set(GFLAG_LIB_DIR       ${GFLAG_ROOT}/lib)
#set(GFLAG_INCLUDE_DIR   ${GFLAG_ROOT}/include)
 
#set(GFLAG_URL           https://github.com/gflags/gflags/archive/v2.2.2.zip)
#set(GFLAG_CONFIGURE     cd ${GFLAG_ROOT}/src/gflag-2.2.2 && cmake -D CMAKE_INSTALL_PREFIX=${GFLAG_ROOT} .)
#set(GFLAG_MAKE          cd ${GFLAG_ROOT}/src/gflag-2.2.2 && make)
#set(GFLAG_INSTALL       cd ${GFLAG_ROOT}/src/gflag-2.2.2 && make install)
 
#ExternalProject_Add(gflag-2.2.2
#        URL                   ${GFLAG_URL}
#        DOWNLOAD_NAME         gflag-2.2.2.zip
#        PREFIX                ${GFLAG_ROOT}
#        CONFIGURE_COMMAND     ${GFLAG_CONFIGURE}
#        BUILD_COMMAND         ${GFLAG_MAKE}
#        INSTALL_COMMAND       ${GFLAG_INSTALL}
#)

ExternalProject_Add(gflags
    GIT_REPOSITORY git@github.com:gflags/gflags.git
    GIT_TAG v2.2.2
    #PREFIX ${GTEST_PREFIX}
    UPDATE_COMMAND ""
    #CONFIGURE_COMMAND ${CMAKE_COMMAND} -D CMAKE_C_COMPILER=${CMAKE_C_COMPILER} -D CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER} -D CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  -DCMAKE_INSTALL_PREFIX=${EXTERNAL_ROOT} ../gflags 
    CONFIGURE_COMMAND ${CMAKE_COMMAND} -D CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER} -D CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  -DCMAKE_INSTALL_PREFIX=${EXTERNAL_ROOT} ../gflags 
    BUILD_COMMAND  ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE}
    INSTALL_COMMAND  ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE} --target install
)