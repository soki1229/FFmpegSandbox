cmake_minimum_required(VERSION 3.10)

# Find FFmpeg swscale
find_package(PkgConfig REQUIRED)
pkg_check_modules(SWSCALE REQUIRED libswscale)

# Include directories
include_directories(${SWSCALE_INCLUDE_DIRS})

# Add example target
add_executable(swscale_main swscale_main.cpp)

target_compile_definitions(swscale_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(swscale_main
    ${SWSCALE_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(swscale_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
