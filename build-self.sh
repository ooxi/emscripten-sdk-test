#!/bin/bash


sudo apt-get update
sudo apt-get install -y  build-essential cmake python2.7 nodejs default-jre

wget 'https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz'
tar -xvf emsdk-portable.tar.gz

cd emsdk_portable
./emsdk update
./emsdk install latest

