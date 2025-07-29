# FFmpegSandbox

A modular C++ project for experimenting with FFmpeg libraries and building media processing applications. The project uses modern CMake practices with a clean, maintainable structure.

## Project Structure

```
FFmpegSandbox/
├── application/
│   ├── experiments/           # Library-specific experiments and examples
│   │   ├── avcodec/          # Codec operations (encoding/decoding)
│   │   ├── avdevice/         # Device handling (input/output devices)
│   │   ├── avfilter/         # Video/audio filtering operations
│   │   ├── avformat/         # Container format handling (input/output)
│   │   ├── avutil/           # Utility functions and data structures
│   │   ├── swresample/       # Audio resampling and format conversion
│   │   └── swscale/          # Image scaling and color conversion
│   │
│   ├── audio_decoder/        # [TODO] Audio decoding application
│   ├── video_decoder/        # [TODO] Video decoding application
│   ├── frame_extractor/      # [TODO] Frame extraction utility
│   ├── media_info/           # [TODO] Media file information tool
│   ├── streaming_player/     # [TODO] Media streaming player
│   ├── transcoder/           # [TODO] Media transcoding application
│   └── cmake/                # Shared CMake modules
│       └── CommonSettings.cmake  # Reusable CMake function for component setup
├── CMakeLists.txt            # Root CMake configuration
└── README.md                 # This file
```

### Experiments

Located in `application/experiments/`, these are minimal examples demonstrating individual FFmpeg library usage. Each experiment follows a consistent structure:
- `src/` - Source files (e.g., `avcodec_main.cpp`)
- `include/` - Header files (if any)
- `CMakeLists.txt` - Build configuration

### Application Features (Planned)

The following application features are planned for future development and will combine multiple FFmpeg libraries:
- `audio_decoder`: Decode audio files to raw PCM
- `video_decoder`: Decode video files to raw frames
- `frame_extractor`: Extract frames from video files
- `media_info`: Display detailed media file information
- `streaming_player`: Play media files with streaming support
- `transcoder`: Convert between different media formats

## Building the Project

### Prerequisites

- CMake 3.10 or higher
- FFmpeg development libraries (libavcodec, libavformat, etc.)
- C++20 compatible compiler
- pkg-config (for finding FFmpeg libraries)

### Building Experiments

```bash
# Create build directory and navigate into it
mkdir -p build && cd build

# Generate build files
cmake ..

# Build all experiments
make

# Run a specific experiment
./application/experiments/avcodec/avcodec_main
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

## Adding a New Experiment

To add a new FFmpeg library experiment:

1. Create a new directory under `application/experiments/` (e.g., `application/experiments/myexperiment`)
2. Add `src/` and `include/` directories
3. Create a minimal `CMakeLists.txt`:
   ```cmake
   include(${CMAKE_SOURCE_DIR}/cmake/CommonSettings.cmake)
   
   setup_component_target(
       myexperiment_main  # target name (executable name)
       myffmpeglib        # pkg-config library name (e.g., libavcodec, libswscale)
       ""                 # additional source files (if any)
       ""                 # additional libraries to link (if any)
   )
   ```
4. Add your source files in the `src/` directory
5. Add header files in the `include/` directory (if needed)

## Contributing to Application Features

Application features that combine multiple FFmpeg libraries are planned for future development. If you'd like to contribute to these features, please open an issue to discuss the implementation approach before submitting a pull request.

Planned application features include:
- Audio decoder
- Video decoder
- Frame extractor
- Media information tool
- Streaming media player
- Media transcoder.

## License

This project is provided under the MIT License.
