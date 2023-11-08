
#pragma once

#include "point.h"
#include "mu_class/class.h"


typedef struct {} PointVtbl;


struct Point {
  const ClassDescriptor* pointDescriptor;
  int x;
  int y;
};

