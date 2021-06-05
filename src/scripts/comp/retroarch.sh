#!/bin/bash

sudo add-apt-repository -y -s ppa:libretro/stable
sudo add-apt-repository -s -y ppa:libretro/testing

sudo apt install -y git

git clone git@github.com:libretro/RetroArch.git $HOME/retroarch-build
sudo apt-get update
sudo apt-get build-dep

# Update package lists, upgrade prexisting packages, install dependencies
sudo apt update
sudo apt upgrade -y
sudo apt install -y build-essential libxkbcommon-dev libx11-xcb-dev zlib1g-dev libfreetype6-dev libegl1-mesa-dev libgles2-mesa-dev libgbm-dev nvidia-cg-toolkit nvidia-cg-dev libavcodec-dev libsdl2-dev libsdl-image1.2-dev libxml2-dev yasm


#git clone git://github.com/libretro/libretro-super.git $HOME/libretro-super-build
#cd $HOME/libretro-super-build && export SHALLOW_CLONE=1 && ./libretro-fetch.sh && ./retroarch-build.sh

# Building cores ~OPTIONAL~
#cd $HOME/libretro-super-build
#mkdir -p $HOME/ra/cores

cd $HOME/retroarch-build && git pull && ./configure && make clean && make -j4

echo -e "\e[32m\e[1m\nBuild is complete, run ./retroarch inside $HOME/retroarch-build to run the compiled Retroarch binary"
