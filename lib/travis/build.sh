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

# Deploy
BINTRAY_VERSION="current"

BINTRAY_RESPONSE=`curl -T "build/hello-world.js" "-u${BINTRAY_AUTHORIZATION}" "https://api.bintray.com/content/ooxi/generic/emscripten-sdk-test/${BINTRAY_VERSION}/hello-world.js?publish=1"`

if [ '{"message":"success"}' == "${BINTRAY_RESPONSE}" ]; then
	echo "Artifact published at https://dl.bintray.com/ooxi/generic/"
else
	echo "Depolyment to Bintray failed with response ${BINTRAY_RESPONSE}"
	exit 1
fi

