
cmake_minimum_required(VERSION 3.25)

project(muclass VERSION 1.0 LANGUAGES C)

set(CMAKE_C_STANDARD 99)

add_library(${CMAKE_PROJECT_NAME} STATIC)

set(namespace muclass)

#set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/install/)

include(GNUInstallDirs)

target_sources(${CMAKE_PROJECT_NAME}
    PRIVATE
        ${PROJECT_SOURCE_DIR}/src/class.c
)

target_include_directories(${CMAKE_PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src/
)

set(HEADERS
    ${PROJECT_SOURCE_DIR}/include/mu_class/class.h
    ${PROJECT_SOURCE_DIR}/include/mu_class/class_private.h
    ${PROJECT_SOURCE_DIR}/include/mu_class/oop_mumacros.h
)

set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES PUBLIC_HEADER "${HEADERS}")

set(CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/external/)
find_package(mualloc CONFIG REQUIRED)
target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE mualloc::mualloc)

install(TARGETS ${CMAKE_PROJECT_NAME}
    EXPORT "${CMAKE_PROJECT_NAME}Targets"
    PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/mu_class
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)

install(EXPORT "${CMAKE_PROJECT_NAME}Targets"
    FILE "${CMAKE_PROJECT_NAME}Targets.cmake"
    NAMESPACE ${namespace}::
    DESTINATION cmake
)

include(CMakePackageConfigHelpers)

write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_PROJECT_NAME}ConfigVersion.cmake"
    VERSION ${CMAKE_VERSION}
    COMPATIBILITY AnyNewerVersion
)

configure_package_config_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION cmake
)

install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_PROJECT_NAME}ConfigVersion.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_PROJECT_NAME}Config.cmake"
    DESTINATION cmake
)

export(EXPORT "${CMAKE_PROJECT_NAME}Targets"
    FILE "${CMAKE_CURRENT_BINARY_DIR}/cmake/${CMAKE_PROJECT_NAME}Targets.cmake"
    NAMESPACE ${namespace}::
)

