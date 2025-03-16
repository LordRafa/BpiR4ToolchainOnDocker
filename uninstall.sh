#!/bin/bash

rm -r "$HOME/bin/bpi-r4-toolchain-onDocker.sh"
rm -r "$HOME/.local/share/icons/hicolor/scalable/apps/bpi-r4-toolchain-onDocker.svg"
rm -r "$HOME/.local/share/applications/bpi-r4-toolchain-onDocker.desktop"

docker image rm lordrafa/bpi-r4-toolchain

