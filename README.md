# FFmpegSandbox

A modular C++ project demonstrating the usage of various FFmpeg libraries with a clean, maintainable structure. The project uses modern CMake practices with a function-based approach to minimize code duplication.

## Project Structure

```
FFmpegSandbox/
├── application/
│   ├── avcodec/        # Codec operations (encoding/decoding)
│   ├── avdevice/       # Device handling (input/output devices)
│   ├── avfilter/       # Video/audio filtering operations
│   ├── avformat/       # Container format handling (input/output)
│   ├── avutil/         # Utility functions and data structures
│   ├── swresample/     # Audio resampling and format conversion
│   ├── swscale/        # Image scaling and color conversion
│   └── cmake/          # Shared CMake modules
│       └── CommonSettings.cmake  # Reusable CMake function for component setup
├── CMakeLists.txt      # Root CMake configuration
└── README.md           # This file
```

Each component follows a consistent structure:
- `src/` - Source files (e.g., `avcodec_main.cpp`)
- `include/` - Header files (if any)
- `CMakeLists.txt` - Component build configuration

## Building the Project

The project uses CMake with a reusable function to minimize configuration duplication. Each component is built as a separate executable.

### Prerequisites

- CMake 3.10 or higher
- FFmpeg development libraries (libavcodec, libavformat, etc.)
- C++20 compatible compiler
- pkg-config (for finding FFmpeg libraries)

### Build Commands

```bash
# Create build directory and navigate into it
mkdir -p build && cd build

# Generate build files
cmake ..

# Build all components
make

# Run a specific example
./application/avcodec/avcodec_main
```

### Cross-Platform Support

The project is designed to work on multiple platforms:

#### macOS
```bash
# Install dependencies
brew install ffmpeg pkg-config
```

#### Ubuntu/Debian
```bash
# Install dependencies
sudo apt-get install -y \
    cmake \
    pkg-config \
    libavcodec-dev \
    libavformat-dev \
    libavutil-dev \
    libavdevice-dev \
    libavfilter-dev \
    libswscale-dev \
    libswresample-dev
```

#### Windows
1. Install vcpkg
2. Install FFmpeg:
   ```
   vcpkg install ffmpeg:x64-windows
   ```
3. Configure CMake with vcpkg toolchain

## Adding a New Component

To add a new FFmpeg component:

1. Create a new directory under `application/`
2. Add `src/` and `include/` directories
3. Create a minimal `CMakeLists.txt`:
   ```cmake
   include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)
   
   setup_component_target(
       mycomponent_main    # target name (executable name)
       myffmpeglib        # pkg-config library name (e.g., avcodec, swscale)
       ""                 # additional source files (if any)
       ""                 # additional libraries (if any)
   )
   ```

## License

This project is provided under the MIT License.
