#
# Copyright 2016 The CyanogenMod Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit from h990 device
$(call inherit-product, device/lge/h990/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := h990
PRODUCT_NAME := lighthouse_h990
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-H990
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="elsa" \
    PRODUCT_DEVICE="elsa" \
    PRODUCT_NAME="elsa_global_com" \
    PRIVATE_BUILD_DESC="elsa_global_com-user 8.0.0 OPR1.170623.032 18325232422a1 release-keys-keys"

BUILD_FINGERPRINT := "lge/elsa_global_com/elsa:8.0.0/OPR1.170623.032/18325232422a1:user/release-keys"
