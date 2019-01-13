#!/bin/bash

IME_LIBRARY="https://github.com/opengapps/arm64/raw/master/lib64/28/libjni_latinimegoogle.so"
KB_DECODER_LIBRARY="https://github.com/opengapps/arm64/raw/master/lib64/23/libjni_keyboarddecoder.so"
mkdir -p "${BUILD_DIR}/custom"
echo "Downloading swipe library (IME) ${IME_LIBRARY}"
wget -O "${BUILD_DIR}/custom/libjni_latinime.so" "${IME_LIBRARY}"
echo "Downloading swipe library (KB_DECODER) ${KB_DECODER_LIBRARY}"
wget -O "${BUILD_DIR}/custom/libjni_keyboarddecoder.so" "${KB_DECODER_LIBRARY}"
sed -i "\$aPRODUCT_COPY_FILES += custom/libjni_latinime.so:system/lib64/libjni_latinime.so" ${BUILD_DIR}/build/make/target/product/core.mk
sed -i "\$aPRODUCT_COPY_FILES += custom/libjni_keyboarddecoder.so:system/lib64/libjni_keyboarddecoder.so" ${BUILD_DIR}/build/make/target/product/core.mk
