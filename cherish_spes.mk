#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

# CherishOS
CHERISH_BUILD_TYPE=OFFICIAL

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Agatha

# Rom Specific Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_GAPPS_ARCH := arm64
TARGET_ENABLE_BLUR := true
USE_PIXEL_CHARGING := true

# Gapps
WITH_GMS := true

# Product Specifics
PRODUCT_NAME := cherish_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/spes_global/spes:13/TKQ1.221114.001/V14.0.2.0.TGCMIXM:user/release-keys
