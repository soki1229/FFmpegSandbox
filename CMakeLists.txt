cmake_minimum_required(VERSION 3.10)
project(FFmpegSandbox)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add subdirectories for each FFmpeg library
add_subdirectory(application/avcodec)
add_subdirectory(application/avformat)
add_subdirectory(application/avutil)
add_subdirectory(application/avdevice)
add_subdirectory(application/avfilter)
add_subdirectory(application/swscale)
add_subdirectory(application/swresample)
