
#include "person.h"


#define STR_LEN 10


struct Person {
  ClassDescriptor const* classDescriptor;
  char name[STR_LEN];
  char surname[STR_LEN];
};

typedef struct {} PersonVtbl;

