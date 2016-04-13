# Compiling C code to JavaScript on Travis CI

 :sparkles: [![Build Status](https://travis-ci.org/ooxi/emscripten-sdk-test.svg?branch=master)](https://travis-ci.org/ooxi/emscripten-sdk-test)  :sparkles:

This project has the sole purpose of this project is to find a way of compiling
C code (preferably a CMake project) to JavaScript using emscripten on Travis CI.

The current setup [works](https://ooxi.github.io/emscripten-sdk-test/) using
the following components:

 1. Normal [CMake project](CMakeLists.txt)
 2. Each commit is build on [Travis CI](.travis.yml)
 3. [emscripten](http://kripken.github.io/emscripten-site/) run in [docker image](https://github.com/thewtex/cross-compilers)
 4. JavaScript artefact is [published on bintray](https://dl.bintray.com/ooxi/generic/emscripten-sdk-test/master/hello-world.js)
 5. Published script included on [GitHub Page](https://ooxi.github.io/emscripten-sdk-test/)
