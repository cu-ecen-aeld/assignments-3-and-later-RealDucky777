CC := $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Werror -Wextra

all: writer.out

writer.out: writer.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.out *.o