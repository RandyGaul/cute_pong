# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/tonyi/Documents/GitHub/cute_pong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/tonyi/Documents/GitHub/cute_pong/build

# Include any dependencies generated for this target.
include CMakeFiles/pong.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pong.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pong.dir/flags.make

CMakeFiles/pong.dir/src/main.cpp.obj: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/src/main.cpp.obj: CMakeFiles/pong.dir/includes_CXX.rsp
CMakeFiles/pong.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pong.dir/src/main.cpp.obj"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/src/main.cpp.obj -c C:/Users/tonyi/Documents/GitHub/cute_pong/src/main.cpp

CMakeFiles/pong.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/src/main.cpp.i"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/tonyi/Documents/GitHub/cute_pong/src/main.cpp > CMakeFiles/pong.dir/src/main.cpp.i

CMakeFiles/pong.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/src/main.cpp.s"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/tonyi/Documents/GitHub/cute_pong/src/main.cpp -o CMakeFiles/pong.dir/src/main.cpp.s

CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj: CMakeFiles/pong.dir/includes_CXX.rsp
CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj: ../libraries/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj -c C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui.cpp

CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.i"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui.cpp > CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.i

CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.s"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui.cpp -o CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.s

CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj: CMakeFiles/pong.dir/includes_CXX.rsp
CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj: ../libraries/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj -c C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_demo.cpp

CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.i"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_demo.cpp > CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.i

CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.s"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_demo.cpp -o CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.s

CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj: CMakeFiles/pong.dir/includes_CXX.rsp
CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj: ../libraries/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj -c C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_draw.cpp

CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.i"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_draw.cpp > CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.i

CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.s"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_draw.cpp -o CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.s

CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj: CMakeFiles/pong.dir/flags.make
CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj: CMakeFiles/pong.dir/includes_CXX.rsp
CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj: ../libraries/imgui/imgui_widgets.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj -c C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_widgets.cpp

CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.i"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_widgets.cpp > CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.i

CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.s"
	C:/TDM-GCC-64/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/imgui/imgui_widgets.cpp -o CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.s

# Object files for target pong
pong_OBJECTS = \
"CMakeFiles/pong.dir/src/main.cpp.obj" \
"CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj" \
"CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj" \
"CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj" \
"CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj"

# External object files for target pong
pong_EXTERNAL_OBJECTS =

pong.exe: CMakeFiles/pong.dir/src/main.cpp.obj
pong.exe: CMakeFiles/pong.dir/libraries/imgui/imgui.cpp.obj
pong.exe: CMakeFiles/pong.dir/libraries/imgui/imgui_demo.cpp.obj
pong.exe: CMakeFiles/pong.dir/libraries/imgui/imgui_draw.cpp.obj
pong.exe: CMakeFiles/pong.dir/libraries/imgui/imgui_widgets.cpp.obj
pong.exe: CMakeFiles/pong.dir/build.make
pong.exe: ../libraries/cute_framework/mingw/libcute.dll.a
pong.exe: CMakeFiles/pong.dir/linklibs.rsp
pong.exe: CMakeFiles/pong.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable pong.exe"
	"C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/pong.dir/objects.a
	C:/TDM-GCC-64/bin/ar.exe cr CMakeFiles/pong.dir/objects.a @CMakeFiles/pong.dir/objects1.rsp
	C:/TDM-GCC-64/bin/c++.exe -Wl,--whole-archive CMakeFiles/pong.dir/objects.a -Wl,--no-whole-archive -o pong.exe -Wl,--out-implib,libpong.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/pong.dir/linklibs.rsp
	"C:/Program Files/CMake/bin/cmake.exe" -E copy C:/Users/tonyi/Documents/GitHub/cute_pong/libraries/cute_framework/mingw/libcute.dll C:/Users/tonyi/Documents/GitHub/cute_pong/build
	"C:/Program Files/CMake/bin/cmake.exe" -E copy_directory C:/Users/tonyi/Documents/GitHub/cute_pong/data C:/Users/tonyi/Documents/GitHub/cute_pong/build/data

# Rule to build all files generated by this target.
CMakeFiles/pong.dir/build: pong.exe

.PHONY : CMakeFiles/pong.dir/build

CMakeFiles/pong.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pong.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pong.dir/clean

CMakeFiles/pong.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/tonyi/Documents/GitHub/cute_pong C:/Users/tonyi/Documents/GitHub/cute_pong C:/Users/tonyi/Documents/GitHub/cute_pong/build C:/Users/tonyi/Documents/GitHub/cute_pong/build C:/Users/tonyi/Documents/GitHub/cute_pong/build/CMakeFiles/pong.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pong.dir/depend

