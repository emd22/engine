cmake_minimum_required(VERSION 3.5)

file (GLOB_RECURSE SOURCES "*.c")
file (GLOB_RECURSE HEADERS "../include/engine/*.h")

SET(GCC_COVERAGE_COMPILE_FLAGS "-g")

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)

foreach(f IN LISTS SOURCES)
  get_filename_component(b ${f} NAME)
  set_source_files_properties(${f} PROPERTIES
    COMPILE_DEFINITIONS "__FILENAME__=${b}")
endforeach()
foreach(f IN LISTS HEADERS)
  get_filename_component(b ${f} NAME)
  set_source_files_properties(${f} PROPERTIES
    COMPILE_DEFINITIONS "__FILENAME__=${b}")
endforeach()

include_directories(
  ${CMAKE_CURRENT_LIST_DIR}/../include/engine
  ${GLEW_INCLUDE_DIRS}
  ${GLFW_INCLUDE_DIRS}
)
add_definitions(${GCC_COVERAGE_COMPILE_FLAGS})

add_executable(engine ${SOURCES} ${HEADERS})
target_link_libraries(engine ${OPENGL_LIBRARY} ${GLEW_LIBRARIES} glfw)