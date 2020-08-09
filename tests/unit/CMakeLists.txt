add_executable(unittest.tsk
    test.m.cpp
    templateapp_util.t.cpp
    )

target_link_libraries(unittest.tsk PUBLIC 
    catch2
    templateapp
    )

add_test(NAME unittest COMMAND unittest.tsk)