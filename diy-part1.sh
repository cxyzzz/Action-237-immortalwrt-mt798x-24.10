#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default

# Add third-party packages (非 feed 结构，直接 clone 到 package/)
rm -rf package/luci-app-tailscale-community package/openwrt-tailscale
git clone --depth 1 https://github.com/Tokisaki-Galaxy/luci-app-tailscale-community.git \
  package/luci-app-tailscale-community
git clone --depth 1 https://github.com/GuNanOvO/openwrt-tailscale.git \
  package/openwrt-tailscale