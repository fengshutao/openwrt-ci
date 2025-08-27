# 无WIFI配置调整Q6大小
find ./target/linux/qualcommax/files/arch/arm64/boot/dts/qcom/ -type f ! -iname '*nowifi*' -exec sed -i 's/ipq\(6018\|8074\)\.dtsi/ipq\1-nowifi.dtsi/g' {} +

# 无WIFI配置调整Q6大小——进一步缩小到8MB
sed -i 's/0x1000000/0x800000/g' ./target/linux/qualcommax/files/arch/arm64/boot/dts/qcom/ipq6018-nowifi.dtsi

git clone --depth=1 https://github.com/gdy666/luci-app-lucky.git package/lucky
# 移除 openwrt feeds 自带的核心库
# rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/passwall-packages

# 移除 openwrt feeds 过时的luci版本
# rm -rf feeds/luci/applications/luci-app-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall-luci
