
#include <mu_class/class.h>
#include "point/point.h"


int main(void){
  Point* p = New(Point);
  Point_setX(p, 4);
  Point_setY(p, 5);
  Class_print(p);
  Delete(p);

  return 0;
}

