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
CMAKE_SOURCE_DIR = /home/ethan/Desktop/engine/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ethan/Desktop/engine/build

# Include any dependencies generated for this target.
include CMakeFiles/engine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/engine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/engine.dir/flags.make

CMakeFiles/engine.dir/engine/util/string.c.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/engine/util/string.c.o: /home/ethan/Desktop/engine/src/engine/util/string.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/engine.dir/engine/util/string.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=string.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/engine.dir/engine/util/string.c.o   -c /home/ethan/Desktop/engine/src/engine/util/string.c

CMakeFiles/engine.dir/engine/util/string.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/engine.dir/engine/util/string.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=string.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/engine/src/engine/util/string.c > CMakeFiles/engine.dir/engine/util/string.c.i

CMakeFiles/engine.dir/engine/util/string.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/engine.dir/engine/util/string.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=string.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/engine/src/engine/util/string.c -o CMakeFiles/engine.dir/engine/util/string.c.s

CMakeFiles/engine.dir/engine/util/string.c.o.requires:

.PHONY : CMakeFiles/engine.dir/engine/util/string.c.o.requires

CMakeFiles/engine.dir/engine/util/string.c.o.provides: CMakeFiles/engine.dir/engine/util/string.c.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/engine/util/string.c.o.provides.build
.PHONY : CMakeFiles/engine.dir/engine/util/string.c.o.provides

CMakeFiles/engine.dir/engine/util/string.c.o.provides.build: CMakeFiles/engine.dir/engine/util/string.c.o


CMakeFiles/engine.dir/engine/main.c.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/engine/main.c.o: /home/ethan/Desktop/engine/src/engine/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/engine.dir/engine/main.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/engine.dir/engine/main.c.o   -c /home/ethan/Desktop/engine/src/engine/main.c

CMakeFiles/engine.dir/engine/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/engine.dir/engine/main.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/engine/src/engine/main.c > CMakeFiles/engine.dir/engine/main.c.i

CMakeFiles/engine.dir/engine/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/engine.dir/engine/main.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/engine/src/engine/main.c -o CMakeFiles/engine.dir/engine/main.c.s

CMakeFiles/engine.dir/engine/main.c.o.requires:

.PHONY : CMakeFiles/engine.dir/engine/main.c.o.requires

CMakeFiles/engine.dir/engine/main.c.o.provides: CMakeFiles/engine.dir/engine/main.c.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/engine/main.c.o.provides.build
.PHONY : CMakeFiles/engine.dir/engine/main.c.o.provides

CMakeFiles/engine.dir/engine/main.c.o.provides.build: CMakeFiles/engine.dir/engine/main.c.o


CMakeFiles/engine.dir/engine/shader.c.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/engine/shader.c.o: /home/ethan/Desktop/engine/src/engine/shader.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/engine.dir/engine/shader.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=shader.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/engine.dir/engine/shader.c.o   -c /home/ethan/Desktop/engine/src/engine/shader.c

CMakeFiles/engine.dir/engine/shader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/engine.dir/engine/shader.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=shader.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/engine/src/engine/shader.c > CMakeFiles/engine.dir/engine/shader.c.i

CMakeFiles/engine.dir/engine/shader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/engine.dir/engine/shader.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=shader.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/engine/src/engine/shader.c -o CMakeFiles/engine.dir/engine/shader.c.s

CMakeFiles/engine.dir/engine/shader.c.o.requires:

.PHONY : CMakeFiles/engine.dir/engine/shader.c.o.requires

CMakeFiles/engine.dir/engine/shader.c.o.provides: CMakeFiles/engine.dir/engine/shader.c.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/engine/shader.c.o.provides.build
.PHONY : CMakeFiles/engine.dir/engine/shader.c.o.provides

CMakeFiles/engine.dir/engine/shader.c.o.provides.build: CMakeFiles/engine.dir/engine/shader.c.o


CMakeFiles/engine.dir/engine/logging/log.c.o: CMakeFiles/engine.dir/flags.make
CMakeFiles/engine.dir/engine/logging/log.c.o: /home/ethan/Desktop/engine/src/engine/logging/log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/engine.dir/engine/logging/log.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=log.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/engine.dir/engine/logging/log.c.o   -c /home/ethan/Desktop/engine/src/engine/logging/log.c

CMakeFiles/engine.dir/engine/logging/log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/engine.dir/engine/logging/log.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=log.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/engine/src/engine/logging/log.c > CMakeFiles/engine.dir/engine/logging/log.c.i

CMakeFiles/engine.dir/engine/logging/log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/engine.dir/engine/logging/log.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=log.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/engine/src/engine/logging/log.c -o CMakeFiles/engine.dir/engine/logging/log.c.s

CMakeFiles/engine.dir/engine/logging/log.c.o.requires:

.PHONY : CMakeFiles/engine.dir/engine/logging/log.c.o.requires

CMakeFiles/engine.dir/engine/logging/log.c.o.provides: CMakeFiles/engine.dir/engine/logging/log.c.o.requires
	$(MAKE) -f CMakeFiles/engine.dir/build.make CMakeFiles/engine.dir/engine/logging/log.c.o.provides.build
.PHONY : CMakeFiles/engine.dir/engine/logging/log.c.o.provides

CMakeFiles/engine.dir/engine/logging/log.c.o.provides.build: CMakeFiles/engine.dir/engine/logging/log.c.o


# Object files for target engine
engine_OBJECTS = \
"CMakeFiles/engine.dir/engine/util/string.c.o" \
"CMakeFiles/engine.dir/engine/main.c.o" \
"CMakeFiles/engine.dir/engine/shader.c.o" \
"CMakeFiles/engine.dir/engine/logging/log.c.o"

# External object files for target engine
engine_EXTERNAL_OBJECTS =

engine: CMakeFiles/engine.dir/engine/util/string.c.o
engine: CMakeFiles/engine.dir/engine/main.c.o
engine: CMakeFiles/engine.dir/engine/shader.c.o
engine: CMakeFiles/engine.dir/engine/logging/log.c.o
engine: CMakeFiles/engine.dir/build.make
engine: /usr/lib/x86_64-linux-gnu/libGLU.so
engine: /usr/lib/x86_64-linux-gnu/libGL.so
engine: /usr/lib/x86_64-linux-gnu/libGLEW.so
engine: /usr/local/lib/libglfw3.a
engine: /usr/lib/x86_64-linux-gnu/librt.so
engine: /usr/lib/x86_64-linux-gnu/libm.so
engine: /usr/lib/x86_64-linux-gnu/libX11.so
engine: CMakeFiles/engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ethan/Desktop/engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable engine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/engine.dir/build: engine

.PHONY : CMakeFiles/engine.dir/build

CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/engine/util/string.c.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/engine/main.c.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/engine/shader.c.o.requires
CMakeFiles/engine.dir/requires: CMakeFiles/engine.dir/engine/logging/log.c.o.requires

.PHONY : CMakeFiles/engine.dir/requires

CMakeFiles/engine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/engine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/engine.dir/clean

CMakeFiles/engine.dir/depend:
	cd /home/ethan/Desktop/engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ethan/Desktop/engine/src /home/ethan/Desktop/engine/src /home/ethan/Desktop/engine/build /home/ethan/Desktop/engine/build /home/ethan/Desktop/engine/build/CMakeFiles/engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/engine.dir/depend

