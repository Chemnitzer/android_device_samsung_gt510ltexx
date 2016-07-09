#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter $(gt510ltexx),$(TARGET_DEVICE)),)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Modem
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b07 modem.b08 modem.b10 modem.b11 modem.b12 \
    modem.b13 modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 \
    modem.b19 modem.b20 modem.b21 modem.b23 modem.b24 modem.b25 \
    modem.b27 modem.b28 modem.mdt mba.mbn

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

endif
