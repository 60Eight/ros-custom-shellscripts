#!/bin/bash

CUSTOM_FINGERPRINT=$(awk -F"=" '/ro.bootimage.build.fingerprint/{print $2}' ${BUILD_DIR}/vendor/android-prepare-vendor/${DEVICE}/$(tr '[:upper:]' '[:lower:]' <<< "${AOSP_BUILD}")/factory_imgs_data/system/default.prop)
sed -i s@'$(PRODUCT_BRAND)/$(TARGET_PRODUCT)/$(TARGET_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BF_BUILD_NUMBER):$(TARGET_BUILD_VARIANT)/$(BUILD_VERSION_TAGS)'@${CUSTOM_FINGERPRINT}@ ${BUILD_DIR}/build/core/Makefile
