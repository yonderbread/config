#!/bin/bash
sudo apt update && sudo apt install -y git binutils cmake libcurl4-gnutls-dev libgtk-3-dev libjack-dev libsndfile1-dev meson debhelper devscripts dpkg-dev build-essential ninja-build gettext guile-2.2-dev help2man python3-sphinx ladspa-sdk libfftw3-dev libasound2-dev libavcodec-dev libchromaprint-dev libgtksourceview-3.0-dev libgraphviz-dev libpcre2-dev libsamplerate0-dev libyaml-dev librubberband-dev libzstd-dev librsvg2-dev python-is-python3 python3-pip xdg-utils rsync desktop-file-utils libsdl2-dev lv2-dev liblilv-dev portaudio19-dev librtaudio-dev zip wget unzip
export PATH=$PATH:$HOME/.local/bin
git clone --recursive https://github.com/zrythm/zrythm
cd zrythm
meson build Dtrial=false -Ddebug=true -Doptimization=3 -Dextra_optimizations=true
meson compile -C build && meson install -C build