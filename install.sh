#!/bin/bash

INSTALL_DIRECTORY="/streaming_server"
DESKTOP_FILE_LOCATION="/usr/share/applications"

function copy_directories() {
  cp -r . "${INSTALL_DIRECTORY}"
}

function install_desktop_files() {
    cp "disney_plus/disney_plus.desktop" "${DESKTOP_FILE_LOCATION}"
}

function main() {
  rm -rf "${INSTALL_DIRECTORY}"
  mkdir "${INSTALL_DIRECTORY}"

  copy_directories
  install_desktop_files
}

main "$@"
