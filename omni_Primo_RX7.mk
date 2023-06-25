#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Primo_RX7 device
$(call inherit-product, device/walton/Primo_RX7/device.mk)

PRODUCT_DEVICE := Primo_RX7
PRODUCT_NAME := omni_Primo_RX7
PRODUCT_BRAND := WALTON
PRODUCT_MODEL := Primo RX7
PRODUCT_MANUFACTURER := walton

PRODUCT_GMS_CLIENTID_BASE := android-walton

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Primo_RX7-user 9 PPR1.180610.011 062021 release-keys"

BUILD_FINGERPRINT := WALTON/Primo_RX7/Primo_RX7:9/PPR1.180610.011/062021:user/release-keys
