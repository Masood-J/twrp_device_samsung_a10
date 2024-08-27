#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a10 device
$(call inherit-product, device/samsung/a10/device.mk)

PRODUCT_DEVICE := a10
PRODUCT_NAME := omni_a10
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A105F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a10kx-user 11 RP1A.200720.012 A105NKOU5CUL4 release-keys"

BUILD_FINGERPRINT := samsung/a10kx/a10:11/RP1A.200720.012/A105NKOU5CUL4:user/release-keys
