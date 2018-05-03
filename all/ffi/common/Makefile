all: libloader.a

loader.o: loader.c
	gcc -c -fPIC loader.c -o loader.o

OSNAME=`uname`
SIZE=`uname -m`

libloader.a: loader.o
	ar -r ${OSNAME}_${SIZE}/libloader.a loader.o 

clean:
	rm -rf loader.o
	rm -rf ${OSNAME}_${SIZE}/libloader.a