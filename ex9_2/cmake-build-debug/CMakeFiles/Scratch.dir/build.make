# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ubuntu/host/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ubuntu/host/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/host/projects/ex9_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/host/projects/ex9_2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Scratch.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Scratch.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Scratch.dir/flags.make

CMakeFiles/Scratch.dir/main.cpp.o: CMakeFiles/Scratch.dir/flags.make
CMakeFiles/Scratch.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/host/projects/ex9_2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Scratch.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Scratch.dir/main.cpp.o -c /home/ubuntu/host/projects/ex9_2/main.cpp

CMakeFiles/Scratch.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Scratch.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/host/projects/ex9_2/main.cpp > CMakeFiles/Scratch.dir/main.cpp.i

CMakeFiles/Scratch.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Scratch.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/host/projects/ex9_2/main.cpp -o CMakeFiles/Scratch.dir/main.cpp.s

# Object files for target Scratch
Scratch_OBJECTS = \
"CMakeFiles/Scratch.dir/main.cpp.o"

# External object files for target Scratch
Scratch_EXTERNAL_OBJECTS =

Scratch: CMakeFiles/Scratch.dir/main.cpp.o
Scratch: CMakeFiles/Scratch.dir/build.make
Scratch: CMakeFiles/Scratch.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/host/projects/ex9_2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Scratch"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Scratch.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Scratch.dir/build: Scratch

.PHONY : CMakeFiles/Scratch.dir/build

CMakeFiles/Scratch.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Scratch.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Scratch.dir/clean

CMakeFiles/Scratch.dir/depend:
	cd /home/ubuntu/host/projects/ex9_2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/host/projects/ex9_2 /home/ubuntu/host/projects/ex9_2 /home/ubuntu/host/projects/ex9_2/cmake-build-debug /home/ubuntu/host/projects/ex9_2/cmake-build-debug /home/ubuntu/host/projects/ex9_2/cmake-build-debug/CMakeFiles/Scratch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Scratch.dir/depend

