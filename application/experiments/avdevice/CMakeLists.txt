include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)

setup_component_target(
    avdevice_main      # target name (executable name)
    libavdevice        # pkg-config (package name)
    ""                 # additional source (if none, "")
    ""                 # additional library (if none, "")
)