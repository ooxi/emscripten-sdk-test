#!/bin/bash


sudo apt-get update
sudo apt-get install -y docker.io

mkdir build

docker pull thewtex/cross-compiler-browser-asmjs
docker run --rm -it -v .:ro -v ./build:rw thewtex/cross-compiler-browser-asmjs /bin/ls -la

