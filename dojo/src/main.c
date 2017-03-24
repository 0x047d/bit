#include <stdio.h>
#include <stdlib.h>

#include "block.h"

int main(int argc, char const *argv[])
{
    block *b = newBlock(1);
    printf("block: %d\n", b->id);
    return EXIT_SUCCESS;
}
