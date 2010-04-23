# Copyright (C) 2009 The Android Open Source Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product, vendor/nvidia/harmony/device_tegra.mk)

PRODUCT_PACKAGES += \
    SdkSetup \
    LatinIME

# How this product is called in the build system
PRODUCT_NAME := harmony

# Which actual hardware this is based on (this is a path under vendor/)
PRODUCT_BRAND := nvidia
PRODUCT_DEVICE := harmony

# The user-visible product name
#PRODUCT_MODEL := harmony
PRODUCT_MANUFACTURER := nvidia

# Pick up audio package
include frameworks/base/data/sounds/AudioPackage2.mk

# Use high-density artwork where available
#PRODUCT_LOCALES += hdpi
