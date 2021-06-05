#!/bin/bash

sudo apt install -y git python3-pyqt5.qtsvg python3-rdflib pyqt5-dev-tools \
  libmagic-dev liblo-dev libasound2-dev libpulse-dev libx11-dev \
  libgtk2.0-dev libgtk-3-dev libqt5core5a qtbase5-dev libfluidsynth-dev
git clone --recursive git://github.com/falkTX/Carla.git carla
cd carla && make