#!/bin/bash


sudo apt-get update
sudo apt-get install -y emscripten

mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=/usr/share/emscripten/cmake/Platform/Emscripten.cmake ..
cmake -DCMAKE_TOOLCHAIN_FILE=/usr/share/emscripten/cmake/Platform/Emscripten.cmake ..
make
ls -la

