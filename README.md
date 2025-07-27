# FFmpeg C++ Modular Examples

This project provides modular C++ examples demonstrating the usage of various FFmpeg libraries. Each FFmpeg library component has its own directory with a dedicated example program.

## Components

The project is organized into the following components:

- `avcodec`: Basic codec operations (encoding/decoding)
- `avformat`: Container format handling (input/output)
- `avutil`: Utility functions and data structures
- `avdevice`: Device handling (input/output devices)
- `avfilter`: Video/audio filtering operations
- `swscale`: Image scaling and color conversion
- `swresample`: Audio resampling and format conversion

## Building the Project

The project uses CMake for building and requires FFmpeg development libraries.

```bash
# Create build directory and navigate into it
mkdir build && cd build

# Generate build files
cmake ..

# Build all examples
make
```

## Requirements

- CMake 3.10 or higher
- FFmpeg development libraries
- C++20 compatible compiler

## Cross-Platform Support

The project is designed to be cross-platform and should work on:
- Windows
- macOS
- Linux

Each platform may require different FFmpeg installation methods:
- Windows: Use vcpkg or pre-built FFmpeg libraries
- macOS: Use Homebrew (`brew install ffmpeg`)
- Linux: Use package manager (e.g., `apt-get install libavcodec-dev`)

## License

This project is provided under the MIT License.
