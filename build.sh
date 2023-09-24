#!/usr/bin/env bash

# Sync Trees
git clone  https://github.com/eartinity/device_realme_r5x device/realme/r5x -b awaken
git clone  https://github.com/eartinity/vendor_realme_r5x vendor/realme/r5x -b thirteen
git clone  https://github.com/Amritorock/kernel_realme_r5x -b OSS kernel/realme/r5x

# Start Build
source build/envsetup.sh
lunch awaken_r5x-userdebug
make bacon -j$(nproc --all)

# Upload
cd out/target/product/r5x
curl -sL https://git.io/file-transfer | sh
./transfer wet awaken*.zip￼Enter
