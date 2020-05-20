/*Implementation of crypto library*/

#include "../headers/crypto.h"

std::string code(std::string message, int shift)
{
    std::string result;

    for(int i = 0; i < message.size(); ++i)
    {
        result.push_back(message[i] + shift);
    }

    return result;
}

std::string decode(std::string message, int shift)
{
    std::string result;

    for(int i = 0; i < message.size(); ++i)
    {
       result.push_back(message[i] - shift);
    }

    return result;
}