CC = gcc
CFLAGS = -O2 -Wall -I .

# This flag includes the Pthreads library on a Linux box.
# Others systems will probably require something different.
LIB = -lpthread

all: share badcnt goodcnt

share: share.c csapp.o
	$(CC) $(CFLAGS) -o share share.c csapp.o $(LIB)

badcnt: badcnt.c csapp.o
	$(CC) $(CFLAGS) -o badcnt badcnt.c csapp.o $(LIB)

goodcnt: goodcnt.c csapp.o
	$(CC) $(CFLAGS) -o goodcnt goodcnt.c csapp.o $(LIB)

csapp.o: csapp.c
	$(CC) $(CFLAGS) -c csapp.c

clean:
	rm -f *.o share badcnt goodcnt *~

