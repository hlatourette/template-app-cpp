add_executable(templateapp.i.t
    test.m.cpp
    templateapp_util.t.cpp
)

target_link_libraries(templateapp.i.t
    PRIVATE 
        catch2
        templateapp
)
