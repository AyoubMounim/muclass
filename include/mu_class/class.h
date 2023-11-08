
#pragma once

#include <mu_allocator/allocator.h>
#include "oop_mumacros.h"


typedef struct ClassDescriptor ClassDescriptor;


/* ========================================= Interface functions declaration */

void Class_setAllocator(Allocator* const allocator);

void* Class_create(ClassDescriptor const* const class);
void Class_destroy(void* _obj);

void Class_print(void const* const _obj);

