# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ayoub/mu_libs/mu_libs_c/muclass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ayoub/mu_libs/mu_libs_c/muclass/build

# Include any dependencies generated for this target.
include CMakeFiles/muclass.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/muclass.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/muclass.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/muclass.dir/flags.make

CMakeFiles/muclass.dir/src/class.c.o: CMakeFiles/muclass.dir/flags.make
CMakeFiles/muclass.dir/src/class.c.o: /home/ayoub/mu_libs/mu_libs_c/muclass/src/class.c
CMakeFiles/muclass.dir/src/class.c.o: CMakeFiles/muclass.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ayoub/mu_libs/mu_libs_c/muclass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/muclass.dir/src/class.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/muclass.dir/src/class.c.o -MF CMakeFiles/muclass.dir/src/class.c.o.d -o CMakeFiles/muclass.dir/src/class.c.o -c /home/ayoub/mu_libs/mu_libs_c/muclass/src/class.c

CMakeFiles/muclass.dir/src/class.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/muclass.dir/src/class.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ayoub/mu_libs/mu_libs_c/muclass/src/class.c > CMakeFiles/muclass.dir/src/class.c.i

CMakeFiles/muclass.dir/src/class.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/muclass.dir/src/class.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ayoub/mu_libs/mu_libs_c/muclass/src/class.c -o CMakeFiles/muclass.dir/src/class.c.s

# Object files for target muclass
muclass_OBJECTS = \
"CMakeFiles/muclass.dir/src/class.c.o"

# External object files for target muclass
muclass_EXTERNAL_OBJECTS =

libmuclass.a: CMakeFiles/muclass.dir/src/class.c.o
libmuclass.a: CMakeFiles/muclass.dir/build.make
libmuclass.a: CMakeFiles/muclass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ayoub/mu_libs/mu_libs_c/muclass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libmuclass.a"
	$(CMAKE_COMMAND) -P CMakeFiles/muclass.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/muclass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/muclass.dir/build: libmuclass.a
.PHONY : CMakeFiles/muclass.dir/build

CMakeFiles/muclass.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/muclass.dir/cmake_clean.cmake
.PHONY : CMakeFiles/muclass.dir/clean

CMakeFiles/muclass.dir/depend:
	cd /home/ayoub/mu_libs/mu_libs_c/muclass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ayoub/mu_libs/mu_libs_c/muclass /home/ayoub/mu_libs/mu_libs_c/muclass /home/ayoub/mu_libs/mu_libs_c/muclass/build /home/ayoub/mu_libs/mu_libs_c/muclass/build /home/ayoub/mu_libs/mu_libs_c/muclass/build/CMakeFiles/muclass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/muclass.dir/depend

