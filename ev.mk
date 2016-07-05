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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=gt510ltexx TARGET_DEVICE=gt510lte

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := carus

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Samsung Galaxy A Tablet\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"


