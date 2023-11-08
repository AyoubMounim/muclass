
#include "circle_private.h"
#include "mu_class/class.h"
#include "mu_class/class_private.h"
#include <stdio.h>


/* =========================================== Virtual functions declaration */

static void* init(void* const);
static void deinit(void*);
static void print(void const* const);

static const ClassDescriptor class = {
  .size = sizeof(Circle),
  .name = "Circle",
  .init = init,
  .deinit = deinit,
  .print = print,
  .vptr = NULL,
  .superClass = NULL,
};


/* ========================================== Interface functions definition */

ClassDescriptor const* Circle_getClassDescriptor(void){
  return &class;
}

void Circle_setCentre(Circle* const self, float const x, float const y){
  self->x = x;
  self->y = y;
  return;
}

void Circle_setRadius(Circle* const self, float const radius){
  self->radius = radius;
  return;
}


/* ============================================ Virtual functions definition */

void* init(void* const _self){
  Circle* const self = _self;
  self->class = &class;
  self->x = 0;
  self->y = 0;
  self->radius = 0;
  return _self;
}

void deinit(void* _self){
  Circle* const self = _self;
  self->x = 0;
  self->y = 0;
  self->radius = 0;
  return;
}

void print(void const* const _self){
  Circle const* const self = _self;
  printf(
    "Circle = {x: %f, y: %f, radius: %f}\n",
    self->x, self->y, self->radius
  );
  return;
}

