# Homework. Task 2.
This is the program that use the library, which implements Caesar's code.
To verify that the program works properly try to execute built binary with the next args: W?? 20. 
The result will describe itself by it's own.
## Make
Repository contains Makefile which can be used for building the binary. Just `cd` to the MakeCmakeHW directory and run `make`. Don't forget to clean the folder using `make clean`.
## CMake and Ninja 
Also, you can build the project using CMake util and Ninja build system (may be not installed on your host). The best way to do this is to create empty folder build and run the next command from there: `cmake -GNinja ../ -DCMAKE_INSTALL_PREFIX=../_install`. Then run `ninja` to have the binary.