find_package(PkgConfig REQUIRED)

# Setup component target function
function(setup_component_target target_name pkg_name extra_srcs extra_libs)
    # FFmpeg (or external library) pkg-config
    pkg_check_modules(${pkg_name} REQUIRED ${pkg_name})

    # Source files
    file(GLOB SOURCES CONFIGURE_DEPENDS 
        "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp" 
        ${extra_srcs}
    )

    # Add executable target
    add_executable(${target_name} ${SOURCES})

    # Include directories
    target_include_directories(${target_name} PRIVATE
        ${${pkg_name}_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR}/include
    )

    # Compile definitions
    target_compile_definitions(${target_name} PRIVATE __STDC_CONSTANT_MACROS)

    # Link libraries
    target_link_libraries(${target_name} PRIVATE
        ${${pkg_name}_LIBRARIES}
        ${CMAKE_DL_LIBS}
        ${extra_libs}
    )

    # Extra properties
    set_target_properties(${target_name} PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED ON
        POSITION_INDEPENDENT_CODE ON
    )
endfunction()
