
#pragma once

#include "mu_circle/circle.h"
#include "mu_class/class.h"


struct Circle {
  const ClassDescriptor* class;
  float x;
  float y;
  float radius;
};


typedef struct {
  /* virtual methods here */
} CircleVtbl;

