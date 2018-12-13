#
# sample Makefile for helloworld
#

SRC=asciiart.c
OBJ = asciiart.o
CFLAGS = -Wall -Wextra
TARGET=asciiart

# rules
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $^ -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f $(OBJ)

install:
	cp asciiart $(DESTDIR)/bin/asciiart
