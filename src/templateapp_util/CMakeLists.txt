add_library(templateapp 
    templateapp_util.cpp
)

target_link_libraries(templateapp
    PUBLIC
    INTERFACE
    PRIVATE
)

target_include_directories(templateapp
    PUBLIC
        .
    INTERFACE
    PRIVATE
)
