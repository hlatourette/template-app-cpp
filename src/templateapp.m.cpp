#include <iostream>
#include <string>

#include "util.h"

using namespace templateapp;

int main(int argc, char* argv[])
{
    if (argc < 1) {
        std::cerr << "Usage: " << argv[0] << std::endl;
        return 1;
    }

    std::string question;
    std::cout << "What would you like to know?" << std::endl;
    std::cin >> question;
    std::cout << meaningOfLifeTheUniverseAndEverything(question) << std::endl;
    return 0;
}

