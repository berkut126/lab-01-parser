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
CMAKE_SOURCE_DIR = /home/rooted/Projects/C++/lab-01-parser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rooted/Projects/C++/lab-01-parser/_builds

# Utility rule file for tests-gcov.

# Include the progress variables for this target.
include CMakeFiles/tests-gcov.dir/progress.make

CMakeFiles/tests-gcov: CMakeFiles/tests.dir/tests/test.cpp.gcov


CMakeFiles/tests.dir/tests/test.cpp.gcov: tests
CMakeFiles/tests.dir/tests/test.cpp.gcov: CMakeFiles/tests.dir/tests/test.cpp.gcno
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating CMakeFiles/tests.dir/tests/test.cpp.gcov"
	cd /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests.dir/tests && /usr/bin/gcov-7 /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests.dir/tests/test.cpp.gcno > /dev/null

tests-gcov: CMakeFiles/tests-gcov
tests-gcov: CMakeFiles/tests.dir/tests/test.cpp.gcov
tests-gcov: CMakeFiles/tests-gcov.dir/build.make

.PHONY : tests-gcov

# Rule to build all files generated by this target.
CMakeFiles/tests-gcov.dir/build: tests-gcov

.PHONY : CMakeFiles/tests-gcov.dir/build

CMakeFiles/tests-gcov.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests-gcov.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests-gcov.dir/clean

CMakeFiles/tests-gcov.dir/depend:
	cd /home/rooted/Projects/C++/lab-01-parser/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests-gcov.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests-gcov.dir/depend

