#!/bin/bash

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update && sudo apt install -y lib32gcc1 steamcmd
mkdir $1 && cd $1
steamcmd +login anonymous +force_install_dir csgo_data +app_update 740 validate +quit
