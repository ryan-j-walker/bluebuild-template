#!/usr/bin/env bash

set -oue pipefail

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
