# BpiR4Toolchain On Docker

Toolchain to compile Openwrt for Banana Pi R4

# How to use

First download the [latest](https://github.com/LordRafa/BpiR4ToolchainOnDocker/releases/latest) release and untar it.

Run **./install.sh** and follow any further instruction.

After the installer finish you will find BpiR4Toolchain Docker on your applications list.

There is an alias defined to run Mediatek Autobuild `mtk-autobuild`.

In order to patch `OpenWrt` with `Mediatek` feed run `mtk-autobuild filogic-mac80211-bpi-r4 log_file=make`. More details on mediatek feed repo [Readme](https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds/+/refs/heads/master/autobuild/unified/).

Remember to update `OpenWrt` and `mtk-openwrt-feeds` from time to time, to bring the latest changes.

Enjoy it!!!

# Useful links

* https://hub.docker.com/r/lordrafa/bpi-r4-toolchain
* https://git01.mediatek.com/plugins/gitiles/openwrt/feeds/mtk-openwrt-feeds
* https://openwrt.org/
