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
CMAKE_SOURCE_DIR = /home/ainiaalif/project_mobil/src/arduino

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ainiaalif/project_mobil/build/arduino

# Utility rule file for arduino_firmware_hello-upload.

# Include the progress variables for this target.
include CMakeFiles/arduino_firmware_hello-upload.dir/progress.make

CMakeFiles/arduino_firmware_hello-upload:
	cd /home/ainiaalif/project_mobil/build/arduino/firmware && /usr/bin/cmake --build /home/ainiaalif/project_mobil/build/arduino/firmware -- hello-upload

arduino_firmware_hello-upload: CMakeFiles/arduino_firmware_hello-upload
arduino_firmware_hello-upload: CMakeFiles/arduino_firmware_hello-upload.dir/build.make

.PHONY : arduino_firmware_hello-upload

# Rule to build all files generated by this target.
CMakeFiles/arduino_firmware_hello-upload.dir/build: arduino_firmware_hello-upload

.PHONY : CMakeFiles/arduino_firmware_hello-upload.dir/build

CMakeFiles/arduino_firmware_hello-upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/arduino_firmware_hello-upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/arduino_firmware_hello-upload.dir/clean

CMakeFiles/arduino_firmware_hello-upload.dir/depend:
	cd /home/ainiaalif/project_mobil/build/arduino && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ainiaalif/project_mobil/src/arduino /home/ainiaalif/project_mobil/src/arduino /home/ainiaalif/project_mobil/build/arduino /home/ainiaalif/project_mobil/build/arduino /home/ainiaalif/project_mobil/build/arduino/CMakeFiles/arduino_firmware_hello-upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/arduino_firmware_hello-upload.dir/depend
