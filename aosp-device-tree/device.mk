#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \
    init.insmod.sh \

PRODUCT_PACKAGES += \
    fstab.KH6h \
    init.KH6h.rc \
    init.KH6h.usb.rc \
    init.KH7h.rc \
    init.KH7h.usb.rc \
    init.KI5k.rc \
    init.KI5k.usb.rc \
    init.KI5m.rc \
    init.KI5m.usb.rc \
    init.S662L.rc \
    init.S662L.usb.rc \
    init.S662LC.rc \
    init.S662LC.usb.rc \
    init.S662LCN.rc \
    init.S662LCN.usb.rc \
    init.S665L.rc \
    init.S665L.usb.rc \
    init.S665LN.rc \
    init.S665LN.usb.rc \
    init.X668.rc \
    init.X668.usb.rc \
    init.X668B.rc \
    init.X668B.usb.rc \
    init.X668C.rc \
    init.X668C.usb.rc \
    init.X669.rc \
    init.X669.usb.rc \
    init.X669D.rc \
    init.X669D.usb.rc \
    init.X6817C.rc \
    init.X6817C.usb.rc \
    init.X6823.rc \
    init.X6823.usb.rc \
    init.cali.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.storage.rc \
    init.ums9230_1h10.rc \
    init.ums9230_1h10.usb.rc \
    init.ums9230_1h10_go.rc \
    init.ums9230_1h10_go.usb.rc \
    init.ums9230_4h10.rc \
    init.ums9230_4h10.usb.rc \
    init.ums9230_4h10_go.rc \
    init.ums9230_4h10_go.usb.rc \
    init.ums9230_haps.rc \
    init.ums9230_haps.usb.rc \
    init.ums9230_zebu.rc \
    init.ums9230_zebu.usb.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.KH6h:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.KH6h

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/itel/itel-S665L/itel-S665L-vendor.mk)
