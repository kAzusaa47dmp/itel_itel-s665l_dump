#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from itel-S665L device
$(call inherit-product, device/itel/itel-S665L/device.mk)

PRODUCT_DEVICE := itel-S665L
PRODUCT_NAME := lineage_itel-S665L
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S665L
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S665L-user 12 SP1A.210812.016 490 release-keys"

BUILD_FINGERPRINT := Itel/S665L-GL/itel-S665L:12/SP1A.210812.016/GL-20231025V481:user/release-keys
