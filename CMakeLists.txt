cmake_minimum_required(VERSION 3.10)
project(FFmpegSandbox)

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add subdirectories for each FFmpeg library
add_subdirectory(application/experiments/avcodec)
add_subdirectory(application/experiments/avformat)
add_subdirectory(application/experiments/avutil)
add_subdirectory(application/experiments/avdevice)
add_subdirectory(application/experiments/avfilter)
add_subdirectory(application/experiments/swscale)
add_subdirectory(application/experiments/swresample)
