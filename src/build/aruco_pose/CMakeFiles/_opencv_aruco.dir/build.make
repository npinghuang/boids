# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/enping/boids/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/enping/boids/src/build

# Include any dependencies generated for this target.
include aruco_pose/CMakeFiles/_opencv_aruco.dir/depend.make

# Include the progress variables for this target.
include aruco_pose/CMakeFiles/_opencv_aruco.dir/progress.make

# Include the compile flags for this target's objects.
include aruco_pose/CMakeFiles/_opencv_aruco.dir/flags.make

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o: aruco_pose/CMakeFiles/_opencv_aruco.dir/flags.make
aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o: ../aruco_pose/vendor/aruco/src/aruco.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enping/boids/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o -c /home/enping/boids/src/aruco_pose/vendor/aruco/src/aruco.cpp

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.i"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enping/boids/src/aruco_pose/vendor/aruco/src/aruco.cpp > CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.i

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.s"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enping/boids/src/aruco_pose/vendor/aruco/src/aruco.cpp -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.s

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.requires:

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.requires

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.provides: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.requires
	$(MAKE) -f aruco_pose/CMakeFiles/_opencv_aruco.dir/build.make aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.provides.build
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.provides

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.provides.build: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o


aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o: aruco_pose/CMakeFiles/_opencv_aruco.dir/flags.make
aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o: ../aruco_pose/vendor/aruco/src/charuco.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enping/boids/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o -c /home/enping/boids/src/aruco_pose/vendor/aruco/src/charuco.cpp

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.i"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enping/boids/src/aruco_pose/vendor/aruco/src/charuco.cpp > CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.i

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.s"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enping/boids/src/aruco_pose/vendor/aruco/src/charuco.cpp -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.s

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.requires:

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.requires

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.provides: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.requires
	$(MAKE) -f aruco_pose/CMakeFiles/_opencv_aruco.dir/build.make aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.provides.build
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.provides

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.provides.build: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o


aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o: aruco_pose/CMakeFiles/_opencv_aruco.dir/flags.make
aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o: ../aruco_pose/vendor/aruco/src/dictionary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enping/boids/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o -c /home/enping/boids/src/aruco_pose/vendor/aruco/src/dictionary.cpp

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.i"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enping/boids/src/aruco_pose/vendor/aruco/src/dictionary.cpp > CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.i

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.s"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enping/boids/src/aruco_pose/vendor/aruco/src/dictionary.cpp -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.s

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.requires:

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.requires

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.provides: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.requires
	$(MAKE) -f aruco_pose/CMakeFiles/_opencv_aruco.dir/build.make aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.provides.build
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.provides

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.provides.build: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o


aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o: aruco_pose/CMakeFiles/_opencv_aruco.dir/flags.make
aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o: ../aruco_pose/vendor/aruco/src/zmaxheap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/enping/boids/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o -c /home/enping/boids/src/aruco_pose/vendor/aruco/src/zmaxheap.cpp

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.i"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/enping/boids/src/aruco_pose/vendor/aruco/src/zmaxheap.cpp > CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.i

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.s"
	cd /home/enping/boids/src/build/aruco_pose && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/enping/boids/src/aruco_pose/vendor/aruco/src/zmaxheap.cpp -o CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.s

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.requires:

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.requires

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.provides: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.requires
	$(MAKE) -f aruco_pose/CMakeFiles/_opencv_aruco.dir/build.make aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.provides.build
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.provides

aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.provides.build: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o


# Object files for target _opencv_aruco
_opencv_aruco_OBJECTS = \
"CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o" \
"CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o" \
"CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o" \
"CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o"

# External object files for target _opencv_aruco
_opencv_aruco_EXTERNAL_OBJECTS =

devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o
devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o
devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o
devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o
devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/build.make
devel/lib/lib_opencv_aruco.a: aruco_pose/CMakeFiles/_opencv_aruco.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/enping/boids/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../devel/lib/lib_opencv_aruco.a"
	cd /home/enping/boids/src/build/aruco_pose && $(CMAKE_COMMAND) -P CMakeFiles/_opencv_aruco.dir/cmake_clean_target.cmake
	cd /home/enping/boids/src/build/aruco_pose && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_opencv_aruco.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aruco_pose/CMakeFiles/_opencv_aruco.dir/build: devel/lib/lib_opencv_aruco.a

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/build

aruco_pose/CMakeFiles/_opencv_aruco.dir/requires: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/aruco.cpp.o.requires
aruco_pose/CMakeFiles/_opencv_aruco.dir/requires: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/charuco.cpp.o.requires
aruco_pose/CMakeFiles/_opencv_aruco.dir/requires: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/dictionary.cpp.o.requires
aruco_pose/CMakeFiles/_opencv_aruco.dir/requires: aruco_pose/CMakeFiles/_opencv_aruco.dir/vendor/aruco/src/zmaxheap.cpp.o.requires

.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/requires

aruco_pose/CMakeFiles/_opencv_aruco.dir/clean:
	cd /home/enping/boids/src/build/aruco_pose && $(CMAKE_COMMAND) -P CMakeFiles/_opencv_aruco.dir/cmake_clean.cmake
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/clean

aruco_pose/CMakeFiles/_opencv_aruco.dir/depend:
	cd /home/enping/boids/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/enping/boids/src /home/enping/boids/src/aruco_pose /home/enping/boids/src/build /home/enping/boids/src/build/aruco_pose /home/enping/boids/src/build/aruco_pose/CMakeFiles/_opencv_aruco.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aruco_pose/CMakeFiles/_opencv_aruco.dir/depend

