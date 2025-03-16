#!/bin/bash

LOCAL_HOME="$HOME/BpiR4Toolchain"
mkdir -p "$LOCAL_HOME" 2> /dev/null
mkdir -p "$LOCAL_WORKSPACE" 2> /dev/null

docker run --rm -it \
	-v "$LOCAL_HOME:/App_Home:U" \
	lordrafa/bpi-r4-toolchain /bin/bash

