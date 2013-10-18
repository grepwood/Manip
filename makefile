CC=gcc
CFLAGS=-g3 `pkg-config --cflags glfw3`
INCLUDES=-I/usr/local/include `pkg-config --static --libs glfw3`

BinaryName=manip


OBJS=main.o

all: $(OBJS) $(BinaryName)


%.o:        %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $<

$(BinaryName):
	$(CC) -o $(BinaryName) $(LDFLAGS) $(INCLUDES) $(OBJS)

clean:
	rm -rf *.o
