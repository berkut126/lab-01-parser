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

# Utility rule file for tests-capture-init.

# Include the progress variables for this target.
include CMakeFiles/tests-capture-init.dir/progress.make

CMakeFiles/tests-capture-init: lcov/data/init/tests.info


lcov/data/init/tests.info: lcov/data/init/tests.info.raw
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Post-processing lcov/data/init/tests.info"
	/usr/bin/lcov --quiet -a /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/tests.info.raw --output-file /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/tests.info --base-directory /home/rooted/Projects/C++/lab-01-parser --initial
	/usr/bin/lcov --quiet -r /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/tests.info --output-file /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/tests.info --initial

lcov/data/init/tests.info.raw: CMakeFiles/tests.dir/tests/test.cpp.info.init
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating lcov/data/init/tests.info"
	cat /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests.dir/tests/test.cpp.info.init > /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/tests.info.raw

CMakeFiles/tests.dir/tests/test.cpp.info.init: tests
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Capturing initial coverage data for tests/test.cpp"
	/usr/bin/geninfo --quiet --base-directory /home/rooted/Projects/C++/lab-01-parser --initial --gcov-tool /usr/bin/gcov-7 --output-filename /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests.dir/tests/test.cpp.info.init --no-external /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests.dir/tests/test.cpp.gcno

tests-capture-init: CMakeFiles/tests-capture-init
tests-capture-init: lcov/data/init/tests.info
tests-capture-init: lcov/data/init/tests.info.raw
tests-capture-init: CMakeFiles/tests.dir/tests/test.cpp.info.init
tests-capture-init: CMakeFiles/tests-capture-init.dir/build.make

.PHONY : tests-capture-init

# Rule to build all files generated by this target.
CMakeFiles/tests-capture-init.dir/build: tests-capture-init

.PHONY : CMakeFiles/tests-capture-init.dir/build

CMakeFiles/tests-capture-init.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tests-capture-init.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tests-capture-init.dir/clean

CMakeFiles/tests-capture-init.dir/depend:
	cd /home/rooted/Projects/C++/lab-01-parser/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/tests-capture-init.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tests-capture-init.dir/depend

