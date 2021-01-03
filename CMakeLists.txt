cmake_minimum_required(VERSION 3.0)
project(cute_pong)

# Must have at least C++14.
set(CMAKE_CXX_STANDARD 14)

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


# Web browser build.
if(EMSCRIPTEN)
	set(CMAKE_EXECUTABLE_SUFFIX ".html")
	target_compile_options(pong PUBLIC -O1 -fno-rtti -fno-exceptions)
	target_link_options(pong PRIVATE -o pong.html --preload-file build/data --emrun -O1)
endif()

# Place copy of data folder into build folder.
add_custom_command(TARGET pong POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_directory "${PROJECT_SOURCE_DIR}/data" "$<TARGET_FILE_DIR:pong>/data")


if(WIN32)
	# Copy over the cute shared library into build folder.
	add_custom_command(TARGET pong POST_BUILD COMMAND ${CMAKE_COMMAND} -E copy_if_different "$<$<CONFIG:Debug>:${CUTE_DLL_DEBUG}>$<$<NOT:$<CONFIG:Debug>>:${CUTE_DLL_RELEASE}>" "$<TARGET_FILE_DIR:pong>")

	# For convenience set MSVC debugger's working directory in the build folder.
	set_property(TARGET block_man PROPERTY VS_DEBUGGER_WORKING_DIRECTORY $<TARGET_FILE_DIR:block_man>)
endif()
