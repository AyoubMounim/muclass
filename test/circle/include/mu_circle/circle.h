
#pragma once

#include "mu_class/class.h"


typedef struct Circle Circle;


/* ========================================= Interface functions declaration */

ClassDescriptor const* Circle_getClassDescriptor(void);

void Circle_setCentre(Circle* const self, float const x, float const y);
void Circle_setRadius(Circle* const self, float const radius);

