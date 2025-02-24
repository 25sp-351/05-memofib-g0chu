all: fib

OBJS = main.o
CC = gcc
CFLAGS = -Wall

fib: $(OBJS)
	$(CC) -o fib $(CFLAGS) $(OBJS)

main.o: main.c
	$(CC) -c $(CFLAGS) main.c

clean:
	rm -f fib $(OBJS)