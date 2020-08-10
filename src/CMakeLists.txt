add_library(templateapp 
    templateapp_util/templateapp_util.cpp
    )

target_link_libraries(templateapp PUBLIC
    ${EXTRA_LIBS}
    )

target_include_directories(templateapp PUBLIC
    ${PROJECT_SOURCE_DIR}/src/templateapp_util
    ${EXTRA_INCLUDES}
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
    DESTINATION /usr/local/bin
    COMPONENT templateapp
    )

install(PROGRAMS
        ${PROJECT_SOURCE_DIR}/scripts/templateapp.sh
    DESTINATION /usr/local/etc/init.d
    COMPONENT templateapp
    )

install(FILES
    DESTINATION /usr/local/share
    COMPONENT templateapp
    )
