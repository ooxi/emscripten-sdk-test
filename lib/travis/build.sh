#!/bin/bash


sudo apt-get update
sudo apt-get install -y docker.io

mkdir build
echo $PWD
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

#docker pull thewtex/cross-compiler-browser-asmjs
#docker run --rm -it -v .:/usr/src/input:ro -v ./build:/usr/src/output:rw thewtex/cross-compiler-browser-asmjs /usr/bin/find .

