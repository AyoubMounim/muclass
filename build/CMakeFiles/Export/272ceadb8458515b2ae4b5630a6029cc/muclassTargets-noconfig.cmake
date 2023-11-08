#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "muclass::muclass" for configuration ""
set_property(TARGET muclass::muclass APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(muclass::muclass PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "C"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libmuclass.a"
  )

list(APPEND _cmake_import_check_targets muclass::muclass )
list(APPEND _cmake_import_check_files_for_muclass::muclass "${_IMPORT_PREFIX}/lib/libmuclass.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
