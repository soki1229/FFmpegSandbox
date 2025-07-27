include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    avfilter_main      # target name (executable name)
    libavfilter        # pkg-config (package name)
    ""                 # additional source (if none, "")
    ""                 # additional library (if none, "")
)