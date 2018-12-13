CC = gcc

.PHONY: clean

asciiart: asciiart.c
	$(CC) -o '$@' '$<'

clean:
	rm asciiart
