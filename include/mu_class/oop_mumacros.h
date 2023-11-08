
#pragma once


#define New(type) Class_create(type##_getClassDescriptor())

#define Delete(classPtr) Class_destroy(classPtr)

