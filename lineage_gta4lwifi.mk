#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gta4lwifi device
$(call inherit-product, device/samsung/gta4lwifi/device.mk)

PRODUCT_DEVICE := gta4lwifi
PRODUCT_NAME := lineage_gta4lwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T500
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4lwifixx-user 11 RP1A.200720.012 T500XXU3BUJ1 release-keys"

BUILD_FINGERPRINT := samsung/gta4lwifixx/gta4lwifi:11/RP1A.200720.012/T500XXU3BUJ1:user/release-keys
