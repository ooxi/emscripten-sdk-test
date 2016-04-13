#!/bin/bash


sudo apt-get update
sudo apt-get install -y docker.io

SOURCE_DIRECTORY=$PWD
TRAVIS_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Will use \`${SOURCE_DIRECTORY}' as source and \`${TRAVIS_DIRECTORY}\' as travis directory"

docker pull thewtex/cross-compiler-browser-asmjs
docker run --rm -it -v $SOURCE_DIRECTORY:/usr/src:rw -v $TRAVIS_DIRECTORY:/travis:ro thewtex/cross-compiler-browser-asmjs /travis/test.sh

