
#pragma once

#include "mu_class/class.h"


typedef struct Person Person;


/* ========================================= Interface functions declaration */

ClassDescriptor const* Person_getClassDescriptor(void);

void Person_setName(Person* const self, char* const name);
void Person_setSurname(Person* const self, char* const surname);

