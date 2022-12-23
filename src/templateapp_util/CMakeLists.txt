add_library(templateapplib)

target_link_libraries(templateapplib
    PUBLIC
    INTERFACE
    PRIVATE
)

target_sources(templateapplib
    PRIVATE
        templateapp_util.cpp
)

target_include_directories(templateapplib
    PUBLIC
        .
    INTERFACE
    PRIVATE
)
