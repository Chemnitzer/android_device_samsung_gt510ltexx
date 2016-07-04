# Copyright (C) 2015 The CyanogenMod Project
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

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gt510ltexx/gt510ltexx-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt510ltexx/overlay

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gt510ltexx/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    device/samsung/gt510ltexx/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    device/samsung/gt510ltexx/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    device/samsung/gt510ltexx/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    device/samsung/gt510ltexx/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    device/samsung/gt510ltexx/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    device/samsung/gt510ltexx/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Audio
PRODUCT_COPY_FILES += \
    device/samsung/gt510ltexx/audio/audio_effects.conf:system/etc/audio_effects.conf \
    device/samsung/gt510ltexx/audio/audio_policy.conf:system/etc/audio_policy.conf

# GPS
PRODUCT_COPY_FILES += \
    device/samsung/gt510ltexx/configs/gps.conf:system/etc/gps.conf

# Media
PRODUCT_COPY_FILES += \
    device/samsung/gt510ltexx/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/gt510ltexx/configs/media_profiles.xml:system/etc/media_profiles.xml

# Inherit from gt5-common
$(call inherit-product, device/samsung/gt5-common/common.mk)

