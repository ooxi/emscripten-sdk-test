#!/bin/bash


sudo apt-get update
sudo apt-get install -y docker.io

echo "Will use \`$PWD' as source directory"

docker pull thewtex/cross-compiler-browser-asmjs
docker run --rm -it -v $PWD:/usr/src:rw thewtex/cross-compiler-browser-asmjs /usr/bin/find .

