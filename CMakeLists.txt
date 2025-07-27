cmake_minimum_required(VERSION 3.10)
project(FFmpegLibraries)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add subdirectories for each FFmpeg library
add_subdirectory(src/avcodec)
add_subdirectory(src/avformat)
add_subdirectory(src/avutil)
add_subdirectory(src/avdevice)
add_subdirectory(src/avfilter)
add_subdirectory(src/swscale)
add_subdirectory(src/swresample)

# Examples are built in their respective library directories
