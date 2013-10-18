CC=gcc
CFLAGS=-g3 `pkg-config --cflags glfw3` `pkg-config --cflags glu`
INCLUDES=-I/usr/local/include `pkg-config --static --libs glfw3` `pkg-config --static --libs glu`

BinaryName=manip


OBJS=main.o sphere.o

all: $(OBJS) $(BinaryName)


%.o:        %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $<

$(BinaryName):
	$(CC) -o $(BinaryName) $(LDFLAGS) $(INCLUDES) $(OBJS)

clean:
	rm -rf *.o $(BinaryName)
