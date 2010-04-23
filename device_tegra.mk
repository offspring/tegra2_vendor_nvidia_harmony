#
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
#

# To be included directly by a product makefile; do not use inherit-product.

# WARNING: the most specific overlay goes first
DEVICE_PACKAGE_OVERLAYS := vendor/nvidia/harmony/overlay $(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.sync=no \
	ro.media.dec.vid.wmv.enabled=1 \
	ro.media.dec.aud.wma.enabled=1 \
	ro.browser.useragent=1 \
	persist.service.mount.umsauto=1 \
	ro.setupwizard.mode=OPTIONAL
