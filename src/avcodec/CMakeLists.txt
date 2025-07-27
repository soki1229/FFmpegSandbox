cmake_minimum_required(VERSION 3.10)

# Find FFmpeg avcodec
find_package(PkgConfig REQUIRED)
pkg_check_modules(AVCODEC REQUIRED libavcodec)

# Include directories
include_directories(${AVCODEC_INCLUDE_DIRS})

# Add example target
add_executable(avcodec_main avcodec_main.cpp)

target_compile_definitions(avcodec_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(avcodec_main
    ${AVCODEC_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(avcodec_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
