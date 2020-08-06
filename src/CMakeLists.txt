add_library(templateapp 
    templateapp_util/templateapp_util.cpp
    )

# target_link_libraries(templateapp 
#    <dependencies>
#    )

target_include_directories(templateapp PUBLIC
    ${PROJECT_SOURCE_DIR}/src/templateapp_util
    )

add_executable(templateapp.tsk
    templateapp.m.cpp
    )

target_link_libraries(templateapp.tsk PUBLIC 
    templateapp
    )

target_include_directories(templateapp.tsk PUBLIC
    ${PROJECT_SOURCE_DIR}/src
    )

install(TARGETS
        templateapp.tsk 
    DESTINATION bin
    COMPONENT templateapp
    )

install(PROGRAMS
        ${PROJECT_SOURCE_DIR}/scripts/templateapp.sh
    DESTINATION etc/init.d
    COMPONENT templateapp
    )

# install(FILES
#         ${PROJECT_SOURCE_DIR}/assets/<filename>
#     DESTINATION etc/init.d
#     COMPONENT templateapp
#     )
