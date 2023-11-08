
#include "mu_class/class.h"
#include "mu_class/class_private.h"
#include "mu_allocator/allocator.h"
#include "mu_allocator/heap_allocator.h"
#include <assert.h>


static Allocator* currentAllocator = NULL;


/* ========================================== Interface functions definition */

void Class_setAllocator(Allocator* const allocator){
  currentAllocator = allocator;
  return;
}

void* Class_create(ClassDescriptor const* const class){
  if (!currentAllocator){
    Class_setAllocator((Allocator*) TheHeapAllocator_getInstance());
  }
  void* new = Allocator_allocate(currentAllocator, class->size);
  if (!new){
    return NULL;
  }
  assert(class->init);
  class->init(new);
  return new;
}

void Class_destroy(void* _obj){
  ClassDescriptor const* const* const class = _obj;
  assert((*class)->deinit);
  (*class)->deinit(_obj);
  Allocator_free(currentAllocator, _obj);
  return;
}

void Class_print(void const* const _obj){
  ClassDescriptor const* const* const class = _obj;
  assert((*class)->print);
  (*class)->print(_obj);
  return;
}

