# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/maximilian/Dokumente/uni/ss18/aep/01.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maximilian/Dokumente/uni/ss18/aep/01.1

# Include any dependencies generated for this target.
include CMakeFiles/aestest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/aestest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aestest.dir/flags.make

CMakeFiles/aestest.dir/visual.cpp.o: CMakeFiles/aestest.dir/flags.make
CMakeFiles/aestest.dir/visual.cpp.o: visual.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maximilian/Dokumente/uni/ss18/aep/01.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aestest.dir/visual.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/aestest.dir/visual.cpp.o -c /home/maximilian/Dokumente/uni/ss18/aep/01.1/visual.cpp

CMakeFiles/aestest.dir/visual.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aestest.dir/visual.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maximilian/Dokumente/uni/ss18/aep/01.1/visual.cpp > CMakeFiles/aestest.dir/visual.cpp.i

CMakeFiles/aestest.dir/visual.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aestest.dir/visual.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maximilian/Dokumente/uni/ss18/aep/01.1/visual.cpp -o CMakeFiles/aestest.dir/visual.cpp.s

CMakeFiles/aestest.dir/visual.cpp.o.requires:

.PHONY : CMakeFiles/aestest.dir/visual.cpp.o.requires

CMakeFiles/aestest.dir/visual.cpp.o.provides: CMakeFiles/aestest.dir/visual.cpp.o.requires
	$(MAKE) -f CMakeFiles/aestest.dir/build.make CMakeFiles/aestest.dir/visual.cpp.o.provides.build
.PHONY : CMakeFiles/aestest.dir/visual.cpp.o.provides

CMakeFiles/aestest.dir/visual.cpp.o.provides.build: CMakeFiles/aestest.dir/visual.cpp.o


# Object files for target aestest
aestest_OBJECTS = \
"CMakeFiles/aestest.dir/visual.cpp.o"

# External object files for target aestest
aestest_EXTERNAL_OBJECTS =

aestest: CMakeFiles/aestest.dir/visual.cpp.o
aestest: CMakeFiles/aestest.dir/build.make
aestest: /usr/local/lib/libopencv_stitching.so.4.0.0
aestest: /usr/local/lib/libopencv_superres.so.4.0.0
aestest: /usr/local/lib/libopencv_ml.so.4.0.0
aestest: /usr/local/lib/libopencv_videostab.so.4.0.0
aestest: /usr/local/lib/libopencv_calib3d.so.4.0.0
aestest: /usr/local/lib/libopencv_dnn.so.4.0.0
aestest: /usr/local/lib/libopencv_objdetect.so.4.0.0
aestest: /usr/local/lib/libopencv_photo.so.4.0.0
aestest: /usr/local/lib/libopencv_shape.so.4.0.0
aestest: /usr/local/lib/libopencv_features2d.so.4.0.0
aestest: /usr/local/lib/libopencv_flann.so.4.0.0
aestest: /usr/local/lib/libopencv_highgui.so.4.0.0
aestest: /usr/local/lib/libopencv_videoio.so.4.0.0
aestest: /usr/local/lib/libopencv_imgcodecs.so.4.0.0
aestest: /usr/local/lib/libopencv_video.so.4.0.0
aestest: /usr/local/lib/libopencv_imgproc.so.4.0.0
aestest: /usr/local/lib/libopencv_core.so.4.0.0
aestest: CMakeFiles/aestest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maximilian/Dokumente/uni/ss18/aep/01.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable aestest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aestest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aestest.dir/build: aestest

.PHONY : CMakeFiles/aestest.dir/build

CMakeFiles/aestest.dir/requires: CMakeFiles/aestest.dir/visual.cpp.o.requires

.PHONY : CMakeFiles/aestest.dir/requires

CMakeFiles/aestest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/aestest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/aestest.dir/clean

CMakeFiles/aestest.dir/depend:
	cd /home/maximilian/Dokumente/uni/ss18/aep/01.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maximilian/Dokumente/uni/ss18/aep/01.1 /home/maximilian/Dokumente/uni/ss18/aep/01.1 /home/maximilian/Dokumente/uni/ss18/aep/01.1 /home/maximilian/Dokumente/uni/ss18/aep/01.1 /home/maximilian/Dokumente/uni/ss18/aep/01.1/CMakeFiles/aestest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/aestest.dir/depend

