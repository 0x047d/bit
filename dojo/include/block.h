#ifndef __BLOCK__
#define __BLOCK__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct blockObject
{
    int id;
} block;

extern block *newBlock(int id);

#ifdef __cplusplus
}
#endif

#endif /* __BLOCK__ */
