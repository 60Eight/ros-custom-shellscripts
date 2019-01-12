#!/bin/bash

SWIPE_LIBRARY="https://github.com/opengapps/arm64/raw/master/lib64/28/libjni_latinimegoogle.so"
mkdir -p "${BUILD_DIR}/custom"
echo "Downloading swipe library ${SWIPE_LIBRARY}"
wget -O "${BUILD_DIR}/custom/libjni_latinime.so" "${SWIPE_LIBRARY}"
sed -i "\$aPRODUCT_COPY_FILES += custom/libjni_latinime.so:system/lib64/libjni_latinime.so" ${BUILD_DIR}/build/make/target/product/core.mk
