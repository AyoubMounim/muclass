
#include "person/person.h"
#include "person/person_private.h"
#include "mu_class/class.h"
#include "mu_class/class_private.h"
#include <stdio.h>
#include <string.h>


/* =========================================== Virtual functions declaration */

static void* init(void* const);
static void deinit(void*);
static void print(void const* const);


static const ClassDescriptor classDescriptor = {
  .size = sizeof(Person),
  .name = "Person",
  .init = init,
  .deinit = deinit,
  .print = print,
  .vptr = NULL,
  .superClass = NULL
};


/* ========================================== Interface functions definition */

ClassDescriptor const* Person_getClassDescriptor(void){
  return &classDescriptor;
}

void Person_setName(Person* const self, char* const name){
  memcpy(self->name, name, strlen(name));
  return;
}

void Person_setSurname(Person* const self, char* const surname){
  memcpy(self->surname, surname, strlen(surname));
  return;
}


/* ============================================ Virtual functions definition */

void* init(void* const _self){
  Person* const self = _self;
  self->classDescriptor = &classDescriptor;
  memset(self->name, 0, STR_LEN);
  memset(self->surname, 0, STR_LEN);
  return _self;
}

void deinit(void* _self){
  Person* const self = _self;
  memset(self->name, 0, STR_LEN);
  memset(self->surname, 0, STR_LEN);
  return;
}

void print(void const* const _self){
  Person const* const self = _self;
  printf("Person = {name: %s, surname: %s}\n", self->name, self->surname);
  return;
}

