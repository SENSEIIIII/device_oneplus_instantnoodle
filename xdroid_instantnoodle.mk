#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2020-2021 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit some common xdroidsp stuff
$(call inherit-product, vendor/xdroid/config/common.mk)
$(call inherit-product, vendor/google/gms/config.mk)
XDROID_BOOT := 1080
XDROID_MAINTAINER := Saurabh Parab
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true

# Blur
TARGET_USES_BLUR := true

PRODUCT_NAME := xdroid_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2013

PRODUCT_SYSTEM_NAME := OnePlus8_EEA
PRODUCT_SYSTEM_DEVICE := OnePlus8

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus8 \
    TARGET_PRODUCT=OnePlus8_EEA
