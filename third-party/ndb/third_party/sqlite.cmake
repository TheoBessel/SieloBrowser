if (NDB_ENGINE_SQLITE)
    add_definitions(-DNDB_ENGINE_SQLITE)
    add_library(lib_sqlite OBJECT ${THIRD_PARTY_ROOT}/sqlite/source/sqlite3.c)
    add_dependencies(lib_ndb lib_sqlite)
    set(SQLITE_LIB $<TARGET_OBJECTS:lib_sqlite>)
    list(APPEND NDB_ENGINE_INCLUDE ${THIRD_PARTY_ROOT}/sqlite/include)
    list(APPEND NDB_ENGINE_LIB ${SQLITE_LIB})
endif()