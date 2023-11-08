
#include "point/point.h"
#include "mu_class/class.h"
#include "mu_class/class_private.h"
#include "point/point_private.h"
#include <stdio.h>



/* =========================================== Virtual functions declaration */

static void* init(void* const);
static void deinit(void*);
static void print(void const* const);

static const ClassDescriptor pointDescriptor = {
  .size = sizeof(Point),
  .name = "Point",
  .init = init,
  .deinit = deinit,
  .print = print,
  .vptr = NULL,
  .superClass = NULL,
};


/* ========================================== Interface functions definition */

ClassDescriptor const* Point_getClassDescriptor(void){
  return &pointDescriptor;
}

void Point_setX(Point* const self, int const x){
  self->x = x;
  return;
}

void Point_setY(Point* const self, int const y){
  self->y = y;
  return;
}

int Point_getX(Point const* const self){
  return self->x;
}

int Point_getY(Point const* const self){
  return self->y;
}


/* ============================================ Virtual functions definition */

void* init(void* const _self){
  Point* const self = _self;
  self->pointDescriptor = &pointDescriptor;
  Point_setX(self, 0);
  Point_setY(self, 0);
  return _self;
}

void deinit(void* _self){
  return;
}

void print(void const* const _self){
  Point const* const self = _self;
  printf("Point = {x: %d, y: %d}\n", self->x, self->y);
  return;
}

