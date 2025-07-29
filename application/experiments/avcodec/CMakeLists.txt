include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    avcodec_main      # target name (executable name)
    libavcodec        # pkg-config (package name)
    ""                # additional source (if none, "")
    ""                # additional library (if none, "")
)