#!/bin/bash


# Install docker
sudo apt-get update
sudo apt-get install -y docker.io

# Specify environment
SOURCE_DIRECTORY=$PWD
TRAVIS_DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Will use \`${SOURCE_DIRECTORY}' as source and \`${TRAVIS_DIRECTORY}\' as travis directory"

# Compile to JavaScript
docker pull thewtex/cross-compiler-browser-asmjs
docker run --rm -it -v $SOURCE_DIRECTORY:/usr/src:rw -v $TRAVIS_DIRECTORY:/travis:ro thewtex/cross-compiler-browser-asmjs /travis/compile-inside-docker.sh

# Test
sudo apt-get install -y nodejs
nodejs build/hello-world.js

