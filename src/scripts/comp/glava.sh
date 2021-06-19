#!/bin/bash
# Glava build script
# https://github.com/jarcode-foss/glava

git clone https://github.com/jarcode-foss/glava.git
cd glava
meson build --prefix /usr
ninja -C build -Dstandalone=true
