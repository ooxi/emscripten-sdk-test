#include <stdio.h>
#include <stdlib.h>


int main(int argc, char** argv) {
	fprintf(stdout, "This file was edited on GitHub, compiled via emscripten on TravisCI and deployed to bintray (v2) :)\n");
	return EXIT_SUCCESS;
}

