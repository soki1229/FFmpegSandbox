cmake_minimum_required(VERSION 3.10)

# Find FFmpeg avfilter
find_package(PkgConfig REQUIRED)
pkg_check_modules(AVFILTER REQUIRED libavfilter)

# Include directories
include_directories(${AVFILTER_INCLUDE_DIRS})

# Add example target
add_executable(avfilter_main avfilter_main.cpp)

target_compile_definitions(avfilter_main PRIVATE __STDC_CONSTANT_MACROS)

target_link_libraries(avfilter_main
    ${AVFILTER_LIBRARIES}
    ${CMAKE_DL_LIBS}
)

# Set C++ flags
set_target_properties(avfilter_main PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED ON
    POSITION_INDEPENDENT_CODE ON
)
