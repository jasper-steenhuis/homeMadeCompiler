# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/jasper/Documents/jasperCompiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jasper/Documents/jasperCompiler/build

# Include any dependencies generated for this target.
include CMakeFiles/japser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/japser.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/japser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/japser.dir/flags.make

CMakeFiles/japser.dir/src/main.cpp.o: CMakeFiles/japser.dir/flags.make
CMakeFiles/japser.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/japser.dir/src/main.cpp.o: CMakeFiles/japser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jasper/Documents/jasperCompiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/japser.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/japser.dir/src/main.cpp.o -MF CMakeFiles/japser.dir/src/main.cpp.o.d -o CMakeFiles/japser.dir/src/main.cpp.o -c /home/jasper/Documents/jasperCompiler/src/main.cpp

CMakeFiles/japser.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/japser.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jasper/Documents/jasperCompiler/src/main.cpp > CMakeFiles/japser.dir/src/main.cpp.i

CMakeFiles/japser.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/japser.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jasper/Documents/jasperCompiler/src/main.cpp -o CMakeFiles/japser.dir/src/main.cpp.s

# Object files for target japser
japser_OBJECTS = \
"CMakeFiles/japser.dir/src/main.cpp.o"

# External object files for target japser
japser_EXTERNAL_OBJECTS =

japser: CMakeFiles/japser.dir/src/main.cpp.o
japser: CMakeFiles/japser.dir/build.make
japser: CMakeFiles/japser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jasper/Documents/jasperCompiler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable japser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/japser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/japser.dir/build: japser
.PHONY : CMakeFiles/japser.dir/build

CMakeFiles/japser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/japser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/japser.dir/clean

CMakeFiles/japser.dir/depend:
	cd /home/jasper/Documents/jasperCompiler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jasper/Documents/jasperCompiler /home/jasper/Documents/jasperCompiler /home/jasper/Documents/jasperCompiler/build /home/jasper/Documents/jasperCompiler/build /home/jasper/Documents/jasperCompiler/build/CMakeFiles/japser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/japser.dir/depend
