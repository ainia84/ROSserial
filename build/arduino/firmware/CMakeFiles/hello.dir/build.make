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
CMAKE_SOURCE_DIR = /home/ainiaalif/project_mobil/src/arduino/firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ainiaalif/project_mobil/build/arduino/firmware

# Include any dependencies generated for this target.
include CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello.dir/flags.make

CMakeFiles/hello.dir/control.cpp.obj: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/control.cpp.obj: /home/ainiaalif/project_mobil/src/arduino/firmware/control.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainiaalif/project_mobil/build/arduino/firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello.dir/control.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/control.cpp.obj -c /home/ainiaalif/project_mobil/src/arduino/firmware/control.cpp

CMakeFiles/hello.dir/control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/control.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainiaalif/project_mobil/src/arduino/firmware/control.cpp > CMakeFiles/hello.dir/control.cpp.i

CMakeFiles/hello.dir/control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/control.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainiaalif/project_mobil/src/arduino/firmware/control.cpp -o CMakeFiles/hello.dir/control.cpp.s

CMakeFiles/hello.dir/control.cpp.obj.requires:

.PHONY : CMakeFiles/hello.dir/control.cpp.obj.requires

CMakeFiles/hello.dir/control.cpp.obj.provides: CMakeFiles/hello.dir/control.cpp.obj.requires
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/control.cpp.obj.provides.build
.PHONY : CMakeFiles/hello.dir/control.cpp.obj.provides

CMakeFiles/hello.dir/control.cpp.obj.provides.build: CMakeFiles/hello.dir/control.cpp.obj


CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj: CMakeFiles/hello.dir/flags.make
CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj: /home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ainiaalif/project_mobil/build/arduino/firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj"
	/usr/bin/avr-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj -c /home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp

CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.i"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp > CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.i

CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.s"
	/usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp -o CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.s

CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.requires:

.PHONY : CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.requires

CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.provides: CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.requires
	$(MAKE) -f CMakeFiles/hello.dir/build.make CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.provides.build
.PHONY : CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.provides

CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.provides.build: CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj


# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/control.cpp.obj" \
"CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf: CMakeFiles/hello.dir/control.cpp.obj
/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf: CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj
/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf: CMakeFiles/hello.dir/build.make
/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf: libuno_CORE.a
/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf: CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ainiaalif/project_mobil/build/arduino/firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	/usr/bin/avr-objcopy -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	/usr/bin/avr-objcopy -O ihex -R .eeprom /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	/usr/bin/cmake -DFIRMWARE_IMAGE=/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf -DMCU=atmega328p -DEEPROM_IMAGE=/home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.eep -P /home/ainiaalif/project_mobil/build/arduino/firmware/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/hello.dir/build: /home/ainiaalif/project_mobil/devel/.private/arduino/share/arduino/hello.elf

.PHONY : CMakeFiles/hello.dir/build

CMakeFiles/hello.dir/requires: CMakeFiles/hello.dir/control.cpp.obj.requires
CMakeFiles/hello.dir/requires: CMakeFiles/hello.dir/home/ainiaalif/project_mobil/build/arduino/ros_lib/time.cpp.obj.requires

.PHONY : CMakeFiles/hello.dir/requires

CMakeFiles/hello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello.dir/clean

CMakeFiles/hello.dir/depend:
	cd /home/ainiaalif/project_mobil/build/arduino/firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ainiaalif/project_mobil/src/arduino/firmware /home/ainiaalif/project_mobil/src/arduino/firmware /home/ainiaalif/project_mobil/build/arduino/firmware /home/ainiaalif/project_mobil/build/arduino/firmware /home/ainiaalif/project_mobil/build/arduino/firmware/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hello.dir/depend
