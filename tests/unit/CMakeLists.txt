find_package(Catch2 REQUIRED)

add_executable(templateapp.u.t)

target_link_libraries(templateapp.u.t
    PRIVATE
        Catch2::Catch2WithMain
        util
)

target_sources(templateapp.u.t
    PRIVATE
        util.t.cpp
)

