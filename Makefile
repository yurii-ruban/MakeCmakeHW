.PHONY: all clean coverage #For case with naming conflicts

INC_DIR=-Iheaders
SRC_DIR=sources
CC=g++

# I think there might be some better workaround, but I haven't found it yet.
CC_LD_PATH=export LD_LIBRARY_PATH=$(PWD):$(LD_LIBRARY_PATH); g++

CFLAGS=-fPIC -c -Wall -Wextra
LDFLAGS=-shared
LDPATH=-L$(PWD)
EXECUTABLE=decoder

all: $(EXECUTABLE)

$(EXECUTABLE): main.o libcrypto.so
	$(CC) $(LDPATH) $^ -o $@

#Receipe for main.cpp
main.o: main.cpp
	$(CC) $(CFLAGS) $^

#Receipes for shared library
libcrypto.so: crypto.o
	$(CC_LD_PATH) $^ -o $@ $(LDFLAGS)

crypto.o: $(SRC_DIR)/crypto.cpp
	$(CC) $(CFLAGS) $(INC_DIR) $^

#Cleaning the directory
clean:
	rm *.so *.o $(EXECUTABLE)