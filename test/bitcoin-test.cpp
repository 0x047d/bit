#include <iostream>
#include "primitives/block.h"

int main(int argc, char const *argv[])
{
    CBlockHeader block;
    std::cout << block.GetHash().ToString() << "\n";
    return EXIT_SUCCESS;
}
