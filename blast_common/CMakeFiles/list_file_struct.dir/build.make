# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /norstore/user/olekrie/orthaGogue_0.9.9.5/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /norstore/user/olekrie/orthaGogue_0.9.9.5/src

# Include any dependencies generated for this target.
include blast_common/CMakeFiles/list_file_struct.dir/depend.make

# Include the progress variables for this target.
include blast_common/CMakeFiles/list_file_struct.dir/progress.make

# Include the compile flags for this target's objects.
include blast_common/CMakeFiles/list_file_struct.dir/flags.make

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o: blast_common/CMakeFiles/list_file_struct.dir/flags.make
blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o: blast_common/list_file_struct.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /norstore/user/olekrie/orthaGogue_0.9.9.5/src/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o"
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o -c /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common/list_file_struct.cxx

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/list_file_struct.dir/list_file_struct.cxx.i"
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common/list_file_struct.cxx > CMakeFiles/list_file_struct.dir/list_file_struct.cxx.i

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/list_file_struct.dir/list_file_struct.cxx.s"
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common/list_file_struct.cxx -o CMakeFiles/list_file_struct.dir/list_file_struct.cxx.s

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.requires:
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.requires

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.provides: blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.requires
	$(MAKE) -f blast_common/CMakeFiles/list_file_struct.dir/build.make blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.provides.build
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.provides

blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.provides.build: blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.provides.build

# Object files for target list_file_struct
list_file_struct_OBJECTS = \
"CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o"

# External object files for target list_file_struct
list_file_struct_EXTERNAL_OBJECTS =

blast_common/liblist_file_struct.a: blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o
blast_common/liblist_file_struct.a: blast_common/CMakeFiles/list_file_struct.dir/build.make
blast_common/liblist_file_struct.a: blast_common/CMakeFiles/list_file_struct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library liblist_file_struct.a"
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && $(CMAKE_COMMAND) -P CMakeFiles/list_file_struct.dir/cmake_clean_target.cmake
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/list_file_struct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
blast_common/CMakeFiles/list_file_struct.dir/build: blast_common/liblist_file_struct.a
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/build

blast_common/CMakeFiles/list_file_struct.dir/requires: blast_common/CMakeFiles/list_file_struct.dir/list_file_struct.cxx.o.requires
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/requires

blast_common/CMakeFiles/list_file_struct.dir/clean:
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common && $(CMAKE_COMMAND) -P CMakeFiles/list_file_struct.dir/cmake_clean.cmake
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/clean

blast_common/CMakeFiles/list_file_struct.dir/depend:
	cd /norstore/user/olekrie/orthaGogue_0.9.9.5/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /norstore/user/olekrie/orthaGogue_0.9.9.5/src /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common /norstore/user/olekrie/orthaGogue_0.9.9.5/src /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common /norstore/user/olekrie/orthaGogue_0.9.9.5/src/blast_common/CMakeFiles/list_file_struct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : blast_common/CMakeFiles/list_file_struct.dir/depend
