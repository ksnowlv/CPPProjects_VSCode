# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build

# Include any dependencies generated for this target.
include processtest/CMakeFiles/processtest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include processtest/CMakeFiles/processtest.dir/compiler_depend.make

# Include the progress variables for this target.
include processtest/CMakeFiles/processtest.dir/progress.make

# Include the compile flags for this target's objects.
include processtest/CMakeFiles/processtest.dir/flags.make

processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o: processtest/CMakeFiles/processtest.dir/flags.make
processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o: ../processtest/src/ProcessTest.cpp
processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o: processtest/CMakeFiles/processtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o"
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o -MF CMakeFiles/processtest.dir/src/ProcessTest.cpp.o.d -o CMakeFiles/processtest.dir/src/ProcessTest.cpp.o -c /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/processtest/src/ProcessTest.cpp

processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/processtest.dir/src/ProcessTest.cpp.i"
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/processtest/src/ProcessTest.cpp > CMakeFiles/processtest.dir/src/ProcessTest.cpp.i

processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/processtest.dir/src/ProcessTest.cpp.s"
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/processtest/src/ProcessTest.cpp -o CMakeFiles/processtest.dir/src/ProcessTest.cpp.s

# Object files for target processtest
processtest_OBJECTS = \
"CMakeFiles/processtest.dir/src/ProcessTest.cpp.o"

# External object files for target processtest
processtest_EXTERNAL_OBJECTS =

processtest/libprocesstest.a: processtest/CMakeFiles/processtest.dir/src/ProcessTest.cpp.o
processtest/libprocesstest.a: processtest/CMakeFiles/processtest.dir/build.make
processtest/libprocesstest.a: processtest/CMakeFiles/processtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libprocesstest.a"
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && $(CMAKE_COMMAND) -P CMakeFiles/processtest.dir/cmake_clean_target.cmake
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/processtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
processtest/CMakeFiles/processtest.dir/build: processtest/libprocesstest.a
.PHONY : processtest/CMakeFiles/processtest.dir/build

processtest/CMakeFiles/processtest.dir/clean:
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest && $(CMAKE_COMMAND) -P CMakeFiles/processtest.dir/cmake_clean.cmake
.PHONY : processtest/CMakeFiles/processtest.dir/clean

processtest/CMakeFiles/processtest.dir/depend:
	cd /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/processtest /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest /Users/ksnowlv/Music/CPPProjects/CPPProjects_VSCode/HelloWorld/build/processtest/CMakeFiles/processtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : processtest/CMakeFiles/processtest.dir/depend

