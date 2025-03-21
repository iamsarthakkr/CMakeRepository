# version of cmake
cmake_minimum_required(VERSION 3.24.2)

# setup c++ version
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# specify name of the project. Can be accessed using ${PROJECT_NAME}
project(Module VERSION 1.0)

# specify name of the executible file and the source files (traditional way)
# add_executable(out src/Main.cpp src/Foo.cpp)

# specify name of the executible file and the source files (easier way)
file(GLOB_RECURSE SOURCES ${PROJECT_NAME}/src/*.cpp)
add_executable(out ${PROJECT_NAME}/Main.cpp ${SOURCES})

# To include header file directory to the executible
target_include_directories(out PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}/include)

