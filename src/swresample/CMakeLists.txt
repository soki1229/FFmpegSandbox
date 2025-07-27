cmake_minimum_required(VERSION 3.10)

# Find FFmpeg swresample
find_package(PkgConfig REQUIRED)
pkg_check_modules(SWRESAMPLE REQUIRED libswresample)

# Include directories
include_directories(${SWRESAMPLE_INCLUDE_DIRS})

# Add example target
add_executable(swresample_main swresample_main.cpp)

target_compile_definitions(swresample_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(swresample_main
    ${SWRESAMPLE_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(swresample_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
