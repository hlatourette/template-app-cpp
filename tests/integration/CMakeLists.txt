add_executable(integrationtest.tsk
    test.m.cpp
    templateapp_util.t.cpp
    )

target_link_libraries(integrationtest.tsk PRIVATE 
    catch2
    templateapp
    )