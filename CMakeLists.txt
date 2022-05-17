cmake_minimum_required(VERSION 3.10)

project(templateapp VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)
set(SCR_DIR ${PROJECT_SOURCE_DIR}/scripts)
set(TST_DIR ${PROJECT_SOURCE_DIR}/tests)

enable_testing()

add_subdirectory(${SRC_DIR})
add_subdirectory(${TST_DIR})

install(
    TARGETS
        templateapp.tsk
    DESTINATION /usr/bin
    COMPONENT templateapp
)

install(
    PROGRAMS
        ${SCR_DIR}/templateapp.sh
    DESTINATION /usr/bin
    COMPONENT templateapp
)

install(
    FILES
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
