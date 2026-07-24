git clone --depth=1 https://github.com/gdy666/luci-app-lucky.git package/lucky

cd $OPENWRT_PATH
./scripts/feeds update -a
./scripts/feeds install -a
make defconfig
