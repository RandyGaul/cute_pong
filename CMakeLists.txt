cmake_minimum_required(VERSION 3.0)
project(cute_pong)

# Must have at least C++14.
set(CMAKE_CXX_STANDARD 14)

# ----------------------------------------------------------------------------------------
# TO BE REMOVED BY RANDY LATER - SEE https://github.com/RandyGaul/cute_framework/issues/16
# Platform detection.
if(CMAKE_SYSTEM_NAME MATCHES "Emscripten")
	set(EMSCRIPTEN TRUE)
elseif(WIN32)
	set(WINDOWS TRUE)
elseif(UNIX AND NOT APPLE)
	if(CMAKE_SYSTEM_NAME MATCHES ".*Linux")
		set(LINUX TRUE)
	else()
		message(FATAL_ERROR, "No supported platform detected.")
	endif()
elseif(APPLE)
	if(CMAKE_SYSTEM_NAME MATCHES ".*MacOS.*" OR CMAKE_SYSTEM_NAME MATCHES ".*Darwin.*")
		set(MACOSX TRUE)
	else()
		message(FATAL_ERROR, "No supported platform detected.")
	endif()
else()
	message(FATAL_ERROR, "No supported platform detected.")
endif()

# Defines for cross-platform shader support.
if(WINDOWS)
	add_definitions(-DCUTE_WINDOWS)
elseif(LINUX)
	add_definitions(-DCUTE_LINUX)
	set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
elseif(MACOSX)
	add_definitions(-DCUTE_MACOSX)
	set(CMAKE_POSITION_INDEPENDENT_CODE TRUE)
elseif(EMSCRIPTEN)
	add_definitions(-DCUTE_EMSCRIPTEN)
endif()
# TO BE REMOVED BY RANDY LATER - SEE https://github.com/RandyGaul/cute_framework/issues/16
# ----------------------------------------------------------------------------------------

# Cute.
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/libraries/cute_framework")
find_package(cute REQUIRED)

# Pong by Tony.
set(CUTE_PONG_SRCS
	src/main.cpp
	src/t_global.h
	src/t_utils.h
	src/t_debug.h
	src/pong_global.h
	src/pong_utils.h
	src/pong_graphics.h
	src/pong_game.h
)

set(CUTE_PONG_IMGUI_SRCS
	libraries/imgui/imgui.cpp
	libraries/imgui/imgui_demo.cpp
	libraries/imgui/imgui_draw.cpp
	libraries/imgui/imgui_widgets.cpp
)

add_executable(pong
	${CUTE_PONG_SRCS}
	${CUTE_PONG_IMGUI_SRCS}
)
source_group("pong" FILES ${CUTE_PONG_SRCS})
source_group("imgui" FILES ${CUTE_PONG_IMGUI_SRCS})

target_link_libraries(pong PRIVATE cute)
target_include_directories(pong PUBLIC "${PROJECT_SOURCE_DIR}/src")
add_custom_command(TARGET pong POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy "${PROJECT_SOURCE_DIR}/libraries/cute_framework/mingw/libcute.dll" $<TARGET_FILE_DIR:pong>)
add_custom_command(TARGET pong POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory "${PROJECT_SOURCE_DIR}/data" "$<TARGET_FILE_DIR:pong>/data")

if (MSVC)
	set_property(TARGET pong PROPERTY VS_DEBUGGER_WORKING_DIRECTORY $<TARGET_FILE_DIR:pong>)
endif()