#!/bin/bash

git clone https://github.com/libretro/libretro-super.git $HOME/libretro-super-build
cd $HOME/libretro-super-build && ./libretro-fetch.sh && ./libretro-build.sh

echo -e "\rCores have been compiled. Install them with retroarch"

