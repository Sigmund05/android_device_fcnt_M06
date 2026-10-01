#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from M06 device
$(call inherit-product, device/fcnt/M06/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_M06
PRODUCT_DEVICE := M06
PRODUCT_BRAND := FCNT
PRODUCT_MODEL := M06
PRODUCT_MANUFACTURER := FCNT

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=FCNT/M06/M06:16/V51RM45A/M06.20260417:user/release-keys \
    DeviceProduct=M06
