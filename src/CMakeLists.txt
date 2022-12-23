add_subdirectory(templateapp_util)

add_executable(templateapp)

target_link_libraries(templateapp
    PRIVATE
        templateapplib
)

target_sources(templateapp
    PRIVATE
        templateapp.m.cpp
)

target_include_directories(templateapp
    PRIVATE
        .
)
