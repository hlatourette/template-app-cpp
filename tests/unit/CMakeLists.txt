add_executable(unittest.tsk
    test.m.cpp
    templateapp_util.t.cpp
)

target_link_libraries(unittest.tsk
    PRIVATE 
        catch2
        templateapp
)