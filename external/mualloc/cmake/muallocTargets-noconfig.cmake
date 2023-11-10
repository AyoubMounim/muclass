#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mualloc::mualloc" for configuration ""
set_property(TARGET mualloc::mualloc APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(mualloc::mualloc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmualloc.a"
  )

list(APPEND _cmake_import_check_targets mualloc::mualloc )
list(APPEND _cmake_import_check_files_for_mualloc::mualloc "${_IMPORT_PREFIX}/lib/libmualloc.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
