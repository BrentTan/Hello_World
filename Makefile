CC := gcc
CFLAGS := -Wall
SRC := $(wildcard *.c)
DIR := $(notdir $(SRC))
OBJ := $(patsubst %.c,%.o,${DIR})
TARGET := test
OBJS=$($(SRC)%.c=%.o)
$(TARGET):
	${CC} $(CFLAGS) -c $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

clean:
	rm -f *.o $(TARGET)
