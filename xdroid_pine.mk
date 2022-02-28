#
# Copyright (C) 2021 The xdroidsp
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common xdroidsp stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := false

# Inherit from pine device
$(call inherit-product, device/xiaomi/pine/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pine
PRODUCT_NAME := xdroid_pine
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pine-user 10 QKQ1.191014.001 V12.5.1.0.QCMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/pine/pine:10/QKQ1.191014.001/V12.5.1.0.QCMCNXM:user/release-keys"
