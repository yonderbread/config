#!/bin/bash

# Clean up previous directories
rm -rf aseprite

# Update packages
sudo apt update && sudo apt upgrade -y 
# Install dependencies and other packages
sudo apt install -y aria2 g++ wget git unzip cmake ninja-build libx11-dev libxcursor-dev libxi-dev libgl1-mesa-dev libfontconfig1-dev
# Delete old deps directory if it exists and cd into it
rm -rf $HOME/deps && mkdir $HOME/deps && cd $HOME/deps
# Add deps directory to PATH
export PATH="${PATH}:${HOME}/deps"

# Clone depot_tools
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git depot_tools
# Download skia release
aria2c -x 16 -o skia.zip "https://github.com/aseprite/skia/releases/download/m81-b607b32047/Skia-Linux-Release-x64.zip"

# extract skia and delete downloaded zip
mkdir skia && mv skia.zip skia && cd skia
unzip skia.zip
rm -rf skia.zip
cd $HOME

# Clone latest code from aseprite master branch
git clone https://github.com/aseprite/aseprite aseprite
# Cd into aseprite dir, pull all submodules, and start build
cd aseprite && git pull && git submodule update --init --recursive && mkdir build && cd build && cmake \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DLAF_BACKEND=skia \
  -DSKIA_DIR=$HOME/deps/skia \
  -DSKIA_LIBRARY_DIR=$HOME/deps/skia/out/Release-x64 \
  -DSKIA_LIBRARY=$HOME/deps/skia/out/Release-x64/libskia.a \
  -G Ninja \
  .. && ninja aseprite