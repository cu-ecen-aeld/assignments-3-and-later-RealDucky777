CC := $(CROSS_COMPILE)gcc
CFLAGS = -Wall -Werror -Wextra

all: writer

writer: writer.o
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f writer *.o