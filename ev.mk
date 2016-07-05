#
# Copyright (C) 2015 The Evervolv Project
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

# Call this first so apn list is actually copied
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/apns.mk)

# Product makefile
$(call inherit-product, device/samsung/gt510ltexx/full_gt510ltexx.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/common_full_phone.mk)

# Pull all dictionaries
$(call inherit-product, $(SRC_EVERVOLV_DIR)/config/dictionaries/intl.mk)

# Boot animation
BOOT_ANIMATION_SIZE := xga

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_gt510ltexx
PRODUCT_DEVICE := gt510ltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T555

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt510lte \
  PRODUCT_NAME=gt510ltexx \
  BUILD_FINGERPRINT=samsung/gt510ltexx/gt510lte:6.0.1/MMB29M/T550XXU1BPDA:user/release-keys \
  PRIVATE_BUILD_DESC="gt510ltexx-user 6.0.1 MMB29M T550XXU1BPDA release-keys"

# Set up the product codename
PRODUCT_CODENAME := carus
