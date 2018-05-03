#include <stdlib.h>
#include <stdio.h>
#include <dlfcn.h>
#include "loader.h"

libhandle_ptr loadLibrary(char *inLibPath) {
	libhandle_ptr theLibHandle = dlopen(inLibPath, RTLD_LAZY);
	if (theLibHandle == NULL) {
		fputs(dlerror(), stderr);
		exit(1);
	}
	return theLibHandle;
}

void unloadLibrary(libhandle_ptr inHandle) {
	if (inHandle == NULL) return;
	dlclose(inHandle);
	inHandle = NULL;
}

void * getFunctionHandle(libhandle_ptr inLibHandle, char *inFctName) {
	if (inLibHandle == NULL) {
		fputs("getFunctionHandle: Invalid library handle (NULL)", stderr);
		return NULL;
	}

	if (inFctName == NULL) {
		fputs("getFunctionHandle: Invalid function name (NULL)", stderr);
		return NULL;
	}

	void *theHandle = dlsym(inLibHandle, inFctName);

	//fprintf(stderr, "getting %s at: %p\n", inFctName, theHandle);

	char *error;
	if ((error = dlerror()) != NULL) {
		fputs(error, stderr);
		return NULL;
	}
	return theHandle;
}