#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),itel-S665L)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
