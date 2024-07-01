set(FFMPEG_CONFIGURE cd ../ffmpeg && ./configure --prefix=${EXTERNAL_ROOT} --enable-gpl --enable-small 
    --arch=x86_64 --enable-nonfree --enable-libfdk-aac
    --enable-libx264 --enable-filter=delogo --enable-debug --disable-optimizations)

ExternalProject_Add(ffmpeg
    GIT_REPOSITORY git@github.com:FFmpeg/FFmpeg.git
    GIT_TAG n4.2.7
    #PREFIX ${GTEST_PREFIX}
    UPDATE_COMMAND ""
    #CONFIGURE_COMMAND ${CMAKE_COMMAND} -D CMAKE_C_COMPILER=${CMAKE_C_COMPILER} -D CMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER} -D CMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}  -DCMAKE_INSTALL_PREFIX=${EXTERNAL_ROOT} ../gflags 
    #BUILD_COMMAND  ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE}
    #INSTALL_COMMAND  ${CMAKE_COMMAND} --build . --config ${CMAKE_BUILD_TYPE} --target install
    CONFIGURE_COMMAND ${FFMPEG_CONFIGURE}
    BUILD_COMMAND cd ../ffmpeg && make
    INSTALL_COMMAND cd ../ffmpeg && make install
)