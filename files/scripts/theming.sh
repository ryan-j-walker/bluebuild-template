#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
DEST_DIR="/usr/share/icons"
THEMEDIR="/usr/share/icons/MoreWaita/"
SCRIPTDIR=MoreWaita-main

# Download MoreWaita Icons
wget https://github.com/somepaulo/MoreWaita/archive/main.zip
unzip main.zip

mkdir -p "${THEMEDIR}"
shopt -s extglob
cp -avu "${SCRIPTDIR}"/!(*.build|*.sh|*.py|*.md|.git|.github|.gitignore|_dev) "${THEMEDIR}"
shopt -u extglob
find "${THEMEDIR}" -name '*.build' -type f -delete
gtk-update-icon-cache -f -t "${THEMEDIR}" && xdg-desktop-menu forceupdate
rm -rf MoreWaita-main/ main.zip
