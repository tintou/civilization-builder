# Check http://elementaryos.org/docs/developer-guide/cmake for documentation

cmake_minimum_required (VERSION 2.8)
cmake_policy (VERSION 2.8)
project (civilization-builder)
enable_testing ()
include (GNUInstallDirs)
set (DATADIR "${CMAKE_INSTALL_FULL_DATAROOTDIR}/${CMAKE_PROJECT_NAME}")
set (GETTEXT_PACKAGE "${CMAKE_PROJECT_NAME}")
set (RELEASE_NAME "The elementary Text Editor.")
set (EXEC_NAME "${CMAKE_PROJECT_NAME}")
set (VERSION "0.0.1")
set (VERSION_INFO "Release")
set (PREFIX ${CMAKE_INSTALL_PREFIX})
set (DOLLAR "$")
list (APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

# Some definitions
add_definitions(-DGETTEXT_PACKAGE=\"${GETTEXT_PACKAGE}\")

# Vala
find_package (Vala REQUIRED)
include (ValaVersion)
ensure_vala_version ("0.22" MINIMUM)
include (ValaPrecompile)

add_definitions(-w) # Disable gcc warnings

# Dependencies
set (PROG_DEPS
  gee-0.8
  gobject-2.0
  glib-2.0
  gio-2.0
  gtk+-3.0)

find_package (PkgConfig)

pkg_check_modules (DEPS REQUIRED ${PROG_DEPS})

# Subdirectories
add_subdirectory (src)
add_subdirectory (po)

# Data
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/scratch-text-editor.appdata.xml DESTINATION ${CMAKE_INSTALL_FULL_DATAROOTDIR}/appdata)
install (FILES ${CMAKE_CURRENT_SOURCE_DIR}/data/scratch-text-editor.desktop DESTINATION ${CMAKE_INSTALL_FULL_DATAROOTDIR}/applications)
