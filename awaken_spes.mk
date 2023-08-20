#
# Copyright (C) 2022 The LineageOS Project
# Copyright (C) 2023 Piotr Lange
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AwakenOS stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Set boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Product Specifics
PRODUCT_NAME := awaken_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/spes_global/spes:13/TKQ1.221114.001/V14.0.3.0.TGCMIXM:user/release-keys