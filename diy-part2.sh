#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 将build日期写入GRUB TITLE
cat >> .config <<EOF
#CONFIG_KERNEL_BUILD_DOMAIN="Tom on $(date)"
#CONFIG_KERNEL_BUILD_USER="Tom on $(date)"
CONFIG_GRUB_TITLE="Lean OpenWrt Stable AutoBuild by Tom on $(date)"
EOF

# 更改默认ip
# sed -i 's/192.168.1.1/新的ip/g' package/base-files/files/bin/config_generate

# 更改主机名
#sed -i "s/OpenWrt/新主机名/g" package/base-files/files/bin/config_generate

# 更改版本号
sed -i "s/OpenWrt/Tom stable build on $(date -I) for /g" package/lean/default-settings/files/zzz-default-settings
