#!/bin/bash


sudo apt-get update
sudo apt-get install -y docker.io

docker pull thewtex/cross-compiler-browser-asmjs
docker run --rm -it thewtex/cross-compiler-browser-asmjs

