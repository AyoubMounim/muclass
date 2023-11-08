
#pragma once

#include "mu_class/class.h"


typedef struct Point Point;


/* ========================================= Interface functions declaration */

ClassDescriptor const* Point_getClassDescriptor(void);

void Point_setX(Point* const self, int const x);
void Point_setY(Point* const self, int const y);

int Point_getX(Point const* const self);
int Point_getY(Point const* const self);

