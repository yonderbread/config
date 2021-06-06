#!/bin/bash

if (( $# == 1 ))
then
    if [ ! -d $1 ]
    then
        echo "Invalid or no path to dia source directory supplied."
        exit 0
    fi

    # File path does exist..
    cd $1
    
    sudo apt update
    sudo apt install -y libglib2.0-dev libgtk2.0-dev libxml2-dev zlib1g-dev \
        libcairo2-dev libgraphene-1.0-dev libc-dev-bin libpoppler-dev libemf-dev \
        libxslt1-dev ninja python-is-python3 python3-pip build-essential cmake ninja-build

    python -m pip install --upgrade meson
    export PATH="$PATH:$HOME/.local/bin"
    meson build -Dprefix=`pwd`/build/install
    cd build
    ninja install
    echo -e "\nDia has finished building."
fi
