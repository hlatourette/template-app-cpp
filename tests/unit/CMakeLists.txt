add_executable(templateapp.u.t
    test.m.cpp
    templateapp_util.t.cpp
)

target_link_libraries(templateapp.u.t
    PRIVATE 
        catch2
        templateapp
)
