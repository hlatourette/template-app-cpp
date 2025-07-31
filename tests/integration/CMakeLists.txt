find_package(Catch2 REQUIRED)

add_executable(templateapp.i.t)

target_link_libraries(templateapp.i.t
    PRIVATE
        Catch2::Catch2WithMain
        util
)

target_sources(templateapp.i.t
    PRIVATE
        util.t.cpp
)

