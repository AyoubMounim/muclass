
#pragma once

#include "class.h"


typedef char className_t[80];

typedef void* (*initFunction_t)(void* const);
typedef void (*deinitFunction_t)(void*);
typedef void (*printFunction_t)(void const* const);


struct ClassDescriptor {
  className_t const name;
  size_t const size;
  initFunction_t const init;
  deinitFunction_t const deinit;
  printFunction_t const print;
  void const* vptr;
  ClassDescriptor const* const superClass;
};

