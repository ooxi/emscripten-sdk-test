#!/bin/bash


mkdir build
cd build

cmake -DCMAKE_TOOLCHAIN_FILE=/usr/emsdk_portable/emscripten/tag-1.36.1/cmake/Modules/Platform/Emscripten.cmake ..
make

find .

