#
# Copyright (C) 2021 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX3031/device.mk)

# Inherit some common Pixel-Experience stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX3031
PRODUCT_DEVICE := RMX3031
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X7 Max 5G
PRODUCT_MANUFACTURER := realme

# Screen density
PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SCREEN_DENSITY := 440

TARGET_SUPPORTS_QUICK_TAP := true

# Build info
BUILD_FINGERPRINT := "oplus/ossi/ossi:12/SP1A.210812.016/1653047465326:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3031 \
    PRODUCT_NAME=RMX3031 \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user-12-SP1A.210812.016-1653046777560-release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
