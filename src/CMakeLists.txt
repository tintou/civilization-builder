vala_precompile(VALA_C ${EXEC_NAME}
    CivilizationBuilder.vala
    MainWindow.vala
    GamePane.vala
    GameView.vala
PACKAGES
    ${PROG_DEPS}
OPTIONS
    --vapidir=${CMAKE_SOURCE_DIR}/vapi
    --thread
)
# tranlation stuff

add_executable (${EXEC_NAME} ${VALA_C})
target_link_libraries (${EXEC_NAME} ${DEPS_LIBRARIES})

link_directories (${DEPS_LIBRARY_DIRS})
add_definitions (${DEPS_CFLAGS})

install (TARGETS ${EXEC_NAME} RUNTIME DESTINATION ${CMAKE_INSTALL_FULL_BINDIR})
