cmake_minimum_required(VERSION 3.10)

# Find FFmpeg avformat
find_package(PkgConfig REQUIRED)
pkg_check_modules(AVFORMAT REQUIRED libavformat)

# Include directories
include_directories(${AVFORMAT_INCLUDE_DIRS})

# Add example target
add_executable(avformat_main avformat_main.cpp)

target_compile_definitions(avformat_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(avformat_main
    ${AVFORMAT_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(avformat_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
