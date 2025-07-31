set(EXECUTABLE_NAME templateapp)

add_subdirectory(util)

add_executable(${EXECUTABLE_NAME})

target_link_libraries(${EXECUTABLE_NAME}
    PRIVATE
        util
)

target_sources(${EXECUTABLE_NAME}
    PRIVATE
        templateapp.m.cpp
)

target_include_directories(${EXECUTABLE_NAME}
    PRIVATE
        .
)

