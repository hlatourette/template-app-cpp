add_library(templateapplib STATIC)

target_link_libraries(templateapplib
    PUBLIC
    INTERFACE
    PRIVATE
)

target_sources(templateapplib
    PRIVATE
        templateapp_util.cpp
    INTERFACE
    PUBLIC
        FILE_SET HEADERS
            FILES
                templateapp_util.h
)

target_include_directories(templateapplib
    PUBLIC
    INTERFACE
    PRIVATE
        .
)
