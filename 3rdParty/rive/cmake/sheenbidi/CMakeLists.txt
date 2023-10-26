
project(sheenbidi VERSION 1.0.0 LANGUAGES CXX)

set(SHEENBIDI_SOURCE_DIR "$ENV{ROOT}3rdParty/rive/cmake/rive-cpp-src/zip/sheenbidi/zip")

file(GLOB_RECURSE SHEENBIDI_SOURCES
     "${SHEENBIDI_SOURCE_DIR}/*.cpp"
     "${SHEENBIDI_SOURCE_DIR}/*.h"
)

add_library(sheenbidi STATIC ${SHEENBIDI_SOURCES})

set_target_properties(sheenbidi PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "$ENV{ROOT}/lib"
    LIBRARY_OUTPUT_DIRECTORY "$ENV{ROOT}/lib"
    RUNTIME_OUTPUT_DIRECTORY "$ENV{ROOT}/bin"
)

target_include_directories(sheenbidi PUBLIC ${SHEENBIDI_SOURCE_DIR})
target_include_directories(sheenbidi PUBLIC ${SHEENBIDI_SOURCE_DIR}/Headers)
target_include_directories(sheenbidi PUBLIC ${SHEENBIDI_SOURCE_DIR}/Tools)
