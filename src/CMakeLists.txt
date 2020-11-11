add_library(templateapp 
    templateapp_util/templateapp_util.cpp
    )

target_link_libraries(templateapp
    PUBLIC
    INTERFACE
    PRIVATE
    )

target_include_directories(templateapp
    PUBLIC ${PROJECT_SOURCE_DIR}/include ${PROJECT_SOURCE_DIR}/src/templateapp_util
    INTERFACE
    PRIVATE
    )

add_executable(templateapp.tsk
    templateapp.m.cpp
    )

target_link_libraries(templateapp.tsk PRIVATE 
    templateapp
    )

target_include_directories(templateapp.tsk PRIVATE
    ${PROJECT_SOURCE_DIR}/src
    )

install(TARGETS
        templateapp.tsk
    DESTINATION /usr/bin
    COMPONENT templateapp
    )

install(PROGRAMS
        ${PROJECT_SOURCE_DIR}/scripts/templateapp.sh
    DESTINATION /usr/bin
    COMPONENT templateapp
    )

install(FILES
    DESTINATION /usr/share
    COMPONENT templateapp
    )

set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_PACKAGE_NAME "templateapp")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Hunter LaTourette")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Template application")
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_FILE_NAME ${CPACK_PACKAGE_NAME}-${CPACK_SYSTEM_NAME})
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
include(CPack)