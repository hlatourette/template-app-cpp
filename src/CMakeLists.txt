add_subdirectory(templateapp_util)

add_executable(templateapp.tsk
    templateapp.m.cpp
)

target_link_libraries(templateapp.tsk
    PRIVATE
        templateapp
)

target_include_directories(templateapp.tsk
    PRIVATE
        .
)
