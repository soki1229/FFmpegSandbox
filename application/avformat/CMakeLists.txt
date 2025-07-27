include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    avformat_main      # target name (executable name)
    libavformat        # pkg-config (package name)
    ""                 # additional source (if none, "")
    ""                 # additional library (if none, "")
)