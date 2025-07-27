cmake_minimum_required(VERSION 3.10)

# Find FFmpeg avdevice
find_package(PkgConfig REQUIRED)
pkg_check_modules(AVDEVICE REQUIRED libavdevice)

# Include directories
include_directories(${AVDEVICE_INCLUDE_DIRS})

# Add example target
add_executable(avdevice_main avdevice_main.cpp)

target_compile_definitions(avdevice_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(avdevice_main
    ${AVDEVICE_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(avdevice_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
