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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.22.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.22.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build"

# Include any dependencies generated for this target.
include CMakeFiles/hw03.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hw03.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hw03.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw03.dir/flags.make

CMakeFiles/hw03.dir/src/main.cpp.o: CMakeFiles/hw03.dir/flags.make
CMakeFiles/hw03.dir/src/main.cpp.o: /Users/fabzv/Desktop/Delft/Block\ 3/3D\ modelling/geo1004.hw03/hw/03/cpp/src/main.cpp
CMakeFiles/hw03.dir/src/main.cpp.o: CMakeFiles/hw03.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw03.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw03.dir/src/main.cpp.o -MF CMakeFiles/hw03.dir/src/main.cpp.o.d -o CMakeFiles/hw03.dir/src/main.cpp.o -c "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp/src/main.cpp"

CMakeFiles/hw03.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw03.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp/src/main.cpp" > CMakeFiles/hw03.dir/src/main.cpp.i

CMakeFiles/hw03.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw03.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp/src/main.cpp" -o CMakeFiles/hw03.dir/src/main.cpp.s

# Object files for target hw03
hw03_OBJECTS = \
"CMakeFiles/hw03.dir/src/main.cpp.o"

# External object files for target hw03
hw03_EXTERNAL_OBJECTS =

hw03: CMakeFiles/hw03.dir/src/main.cpp.o
hw03: CMakeFiles/hw03.dir/build.make
hw03: /usr/local/lib/libgmpxx.dylib
hw03: /usr/local/lib/libmpfr.dylib
hw03: /usr/local/lib/libgmp.dylib
hw03: CMakeFiles/hw03.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hw03"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw03.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw03.dir/build: hw03
.PHONY : CMakeFiles/hw03.dir/build

CMakeFiles/hw03.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw03.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw03.dir/clean

CMakeFiles/hw03.dir/depend:
	cd "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp" "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/cpp" "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build" "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build" "/Users/fabzv/Desktop/Delft/Block 3/3D modelling/geo1004.hw03/hw/03/build/CMakeFiles/hw03.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/hw03.dir/depend

