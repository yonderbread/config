sudo apt update && sudo apt install -y build-essential cmake g++-10 gcc-10 git 
glslang-tools libavcodec-dev libavutil-dev libboost-context-dev 
libboost-dev liblz4-dev libmbedtls-dev libopus-dev libqt5opengl5-dev 
libsdl2-dev libssl-dev libswscale-dev libzip-dev libzstd-dev ninja-build
 python-is-python3 python3-pip qtbase5-dev qtbase5-private-dev qtwebengine5-dev 
zlib1g-devsudo apt-get install build-essential cmake g++-10 gcc-10 git 
glslang-tools libavcodec-dev libavutil-dev libboost-context-dev 
libboost-dev liblz4-dev libmbedtls-dev libopus-dev libqt5opengl5-dev 
libsdl2-dev libssl-dev libswscale-dev libzip-dev libzstd-dev ninja-build
 python python3-pip qtbase5-dev qtbase5-private-dev qtwebengine5-dev 
zlib1g-dev

python -m pip install -U conan

git clone --recursive git://github.com/yuzu-emu/yuzu.git yuzu-build
cd yuzu-build && mkdir build && cd build && cmake .. -GNinja -DCMAKE_C_COMPILER=gcc-10 -DCMAKE_CXX_COMPILER=g++-10