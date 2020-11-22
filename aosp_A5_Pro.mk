#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := breeze

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/UMIDIGI/A5_Pro/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_A5_Pro
PRODUCT_DEVICE := A5_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := UMIDIGI

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=The_big_adventure.ogg \

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="A5_Pro" \
    PRODUCT_NAME="A5_Pro" \
    PRIVATE_BUILD_DESC="sunfish-user 11 RP1A.201105.002 6869500 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.201105.002/6869500:user/release-keys"

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-umidigi
