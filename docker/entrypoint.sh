#!/bin/bash
args="$@"

if [ ! -d 'mtk-openwrt-feeds' ]; then
    git clone https://git01.mediatek.com/openwrt/feeds/mtk-openwrt-feeds
fi

if [ ! -d 'openwrt' ]; then
    git clone https://git.openwrt.org/openwrt/openwrt.git
fi

cd openwrt

exec $args

