#include "headers/crypto.h"
#include <iostream>
#include <string>

int main(int argc, char** argv)
{
    std::string input(argv[1]);
    int key = std::stoi(argv[2]);

    std::string decoded = decode(input, key);
    std::cout << "Decoded string: " << decoded << std::endl;

    return 0;
}