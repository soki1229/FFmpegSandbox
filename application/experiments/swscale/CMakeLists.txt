include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    swscale_main      # target name (executable name)
    libswscale        # pkg-config (package name)
    ""                # additional source (if none, "")
    ""                # additional library (if none, "")
)