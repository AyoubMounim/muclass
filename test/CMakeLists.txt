
cmake_minimum_required(VERSION 3.25)

project(test LANGUAGES C)

set(CMAKE_C_STANDARD 99)

add_executable(${CMAKE_PROJECT_NAME} main.c)

set(CMAKE_PREFIX_PATH "/usr/local/lib/mu_libs_c/mualloc/")
find_package(mualloc CONFIG REQUIRED)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE mualloc::mualloc)

set(CMAKE_PREFIX_PATH "/usr/local/lib/mu_libs_c/muclass/")
find_package(muclass CONFIG REQUIRED)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE muclass::muclass)

add_subdirectory(point)

