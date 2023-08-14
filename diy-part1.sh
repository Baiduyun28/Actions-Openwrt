#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
touch ./include/kernel-5.10
sed -i 'a\LINUX_VERSION-5.10 = .190' ./include/kernel-5.10
sed -i 'a\LINUX_KERNEL_HASH-5.10.190 = 29723df01d40ff07ff6d254eaaf90c7b3ec3c70f4ebe089b80f785f46efaf597' ./include/kernel-5.10
touch ./include/kernel-5.4
sed -i 'a\LINUX_VERSION-5.4 = .238' ./include/kernel-5.4
sed -i 'a\LINUX_KERNEL_HASH-5.4.238 = 70a2b2da85598eba6a73cdc0749e441cbdf3011d9babcb7028a46aa8d98aa91f' ./include/kernel-5.4
