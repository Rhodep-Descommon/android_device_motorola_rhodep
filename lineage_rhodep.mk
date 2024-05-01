#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rhodep device
$(call inherit-product, device/motorola/rhodep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

MATRIXX_MAINTAINER := IczYn
MATRIXX_CHIPSET := SM6375
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400
MATRIXX_BUILD_TYPE := Official
WITH_GMS := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_ENABLE_BLUR := true


#Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_rhodep
PRODUCT_DEVICE := rhodep
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g82 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rhodep_g \
    PRIVATE_BUILD_DESC="rhodep_g-user 13 T1SUS33.1-124-6-3 1f802-e899d release-keys"

BUILD_FINGERPRINT := motorola/rhodep_g/rhodep:13/T1SUS33.1-124-6-3/1f802-e899d:user/release-keys
