#
# Copyright (C) 2020 The Evolution-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from sakura device
$(call inherit-product, device/xiaomi/sakura/device.mk)

# Inherit some common Evolution X stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sakura
PRODUCT_NAME := evolution_sakura
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sakura" \
    TARGET_DEVICE="sakura"
