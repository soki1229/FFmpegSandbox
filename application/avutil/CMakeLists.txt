include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    avutil_main      # target name (executable name)
    libavutil        # pkg-config (package name)
    ""               # additional source (if none, "")
    ""               # additional library (if none, "")
)