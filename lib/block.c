#include "block.h"

#ifdef __cplusplus
extern "C" {
#endif

block *newBlock(int id)
{
    block *ptr = malloc(sizeof(block));
    if (ptr == NULL) return NULL;
    memset(ptr, 0, sizeof(block));
    ptr->id = id;
    return ptr;
}

#ifdef __cplusplus
}
#endif
