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

# Utility rule file for template-genhtml.

# Include the progress variables for this target.
include CMakeFiles/template-genhtml.dir/progress.make

CMakeFiles/template-genhtml:
	/usr/bin/genhtml --quiet --sort --prefix /home/rooted/Projects/C++/lab-01-parser --baseline-file /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/init/template.info --output-directory /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/html/template --title template\ -\ target\ template --demangle-cpp /home/rooted/Projects/C++/lab-01-parser/_builds/lcov/data/capture/template.info

template-genhtml: CMakeFiles/template-genhtml
template-genhtml: CMakeFiles/template-genhtml.dir/build.make

.PHONY : template-genhtml

# Rule to build all files generated by this target.
CMakeFiles/template-genhtml.dir/build: template-genhtml

.PHONY : CMakeFiles/template-genhtml.dir/build

CMakeFiles/template-genhtml.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/template-genhtml.dir/cmake_clean.cmake
.PHONY : CMakeFiles/template-genhtml.dir/clean

CMakeFiles/template-genhtml.dir/depend:
	cd /home/rooted/Projects/C++/lab-01-parser/_builds && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds /home/rooted/Projects/C++/lab-01-parser/_builds/CMakeFiles/template-genhtml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/template-genhtml.dir/depend

