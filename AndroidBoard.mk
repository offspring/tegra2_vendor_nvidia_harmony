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

LOCAL_PATH := $(call my-dir)

ADDITIONAL_DEFAULT_PROPERTIES += \
	persist.tegra.dpy5.mode.width=1280 \
	persist.tegra.dpy5.mode.height=720

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.tegra.rc | $(ACP)
	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := nvec_keyboard.kcm
#include $(BUILD_KEY_CHAR_MAP)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/usr/keychars/nvec_keyboard.kcm.bin:system/usr/keychars/nvec_keyboard.kcm.bin

file := $(TARGET_OUT_KEYLAYOUT)/nvec_keyboard.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/nvec_keyboard.kl | $(ACP)
	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := tegra-kbc.kcm
#include $(BUILD_KEY_CHAR_MAP)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/usr/keychars/tegra-kbc.kcm.bin:system/usr/keychars/tegra-kbc.kcm.bin

file := $(TARGET_OUT_KEYLAYOUT)/tegra-kbc.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/tegra-kbc.kl | $(ACP)
	$(transform-prebuilt-to-target)

#include $(CLEAR_VARS)
#LOCAL_SRC_FILES := usb_keyboard_us102.kcm
#include $(BUILD_KEY_CHAR_MAP)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/usr/keychars/usb_keyboard_us102.kcm.bin:system/usr/keychars/usb_keyboard_us102.kcm.bin

file := $(TARGET_OUT_KEYLAYOUT)/usb_keyboard_us102.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/usb_keyboard_us102.kl | $(ACP)
	$(transform-prebuilt-to-target)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.conf:system/etc/vold.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/framework/com.nvidia.display.jar:system/framework/com.nvidia.display.jar \
	$(LOCAL_PATH)/proprietary/lib/libnvidia_display_jni.so:system/lib/libnvidia_display_jni.so \
	$(LOCAL_PATH)/proprietary/etc/permissions/com.nvidia.display.xml:system/etc/permissions/com.nvidia.display.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/framework/com.nvidia.graphics.jar:system/framework/com.nvidia.graphics.jar \
	$(LOCAL_PATH)/proprietary/lib/libnvidia_graphics_jni.so:system/lib/libnvidia_graphics_jni.so \
	$(LOCAL_PATH)/proprietary/etc/permissions/com.nvidia.graphics.xml:system/etc/permissions/com.nvidia.graphics.xml

include $(CLEAR_VARS)

LOCAL_PREBUILT_LIBS := \
	proprietary/lib/libaudio.so \
	proprietary/lib/libaudiopolicy.so \
	proprietary/lib/libcamera.so

include $(BUILD_MULTI_PREBUILT)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/gles2_sanity.so:system/lib/gles2_sanity.so \
	$(LOCAL_PATH)/proprietary/lib/libcgdrv.so:system/lib/libcgdrv.so \
	$(LOCAL_PATH)/proprietary/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
	$(LOCAL_PATH)/proprietary/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
	$(LOCAL_PATH)/proprietary/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
	$(LOCAL_PATH)/proprietary/lib/hw/lights.tegra.so:system/lib/hw/lights.tegra.so \
	$(LOCAL_PATH)/proprietary/lib/hw/overlay.tegra.so:system/lib/hw/overlay.tegra.so

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/hw/g_android.ko:system/lib/hw/g_android.ko \
	$(LOCAL_PATH)/proprietary/lib/hw/gadgetfs.ko:system/lib/hw/gadgetfs.ko

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/bin/nv_hciattach:system/bin/nv_hciattach

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/etc/bluez/bluecore6.psr:system/etc/bluez/bluecore6.psr

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/ar6000.ko:system/lib/hw/wlan/ar6000.ko \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/athwlan.bin.z77:system/lib/hw/wlan/athwlan.bin.z77 \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/data.patch.hw2_0.bin:system/lib/hw/wlan/data.patch.hw2_0.bin \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/eeprom.bin:system/lib/hw/wlan/eeprom.bin \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/eeprom.data:system/lib/hw/wlan/eeprom.data

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/ar6000.ko:system/lib/hw/wlan_ar6002/ar6000.ko \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/athwlan.bin.z77:system/lib/hw/wlan_ar6002/athwlan.bin.z77 \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/data.patch.hw2_0.bin:system/lib/hw/wlan_ar6002/data.patch.hw2_0.bin \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/eeprom.bin:system/lib/hw/wlan_ar6002/eeprom.bin \
	$(LOCAL_PATH)/proprietary/lib/hw/wlan/eeprom.data:system/lib/hw/wlan_ar6002/eeprom.data

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/etc/pvnvomx.cfg:system/etc/pvnvomx.cfg \
	$(LOCAL_PATH)/proprietary/lib/libpvnvomx.so:system/lib/libpvnvomx.so \
	$(LOCAL_PATH)/proprietary/lib/libopencorehw.so:system/lib/libopencorehw.so

include $(CLEAR_VARS)

LOCAL_PREBUILT_LIBS := \
	proprietary/lib/libnvrm.so \
	proprietary/lib/libnvos.so \
	proprietary/lib/libnvdispmgr_d.so \
	proprietary/lib/libnvrm_graphics.so \
	proprietary/lib/libnvddk_audiofx.so \
	proprietary/lib/libnvodm_query.so \
	proprietary/lib/libnvodm_misc.so \
	proprietary/lib/libnvdispatch_helper.so

include $(BUILD_MULTI_PREBUILT)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/libnvomx.so:system/lib/libnvomx.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm.so:system/lib/libnvmm.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_utils.so:system/lib/libnvmm_utils.so \
	$(LOCAL_PATH)/proprietary/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \
	$(LOCAL_PATH)/proprietary/lib/libnvsm.so:system/lib/libnvsm.so \
	$(LOCAL_PATH)/proprietary/lib/libnvomxilclient.so:system/lib/libnvomxilclient.so \
	$(LOCAL_PATH)/proprietary/lib/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
	$(LOCAL_PATH)/proprietary/lib/libnvddk_2d.so:system/lib/libnvddk_2d.so \
	$(LOCAL_PATH)/proprietary/lib/libnvddk_aes.so:system/lib/libnvddk_aes.so \
	$(LOCAL_PATH)/proprietary/lib/libnvapputil.so:system/lib/libnvapputil.so \
	$(LOCAL_PATH)/proprietary/lib/libnvec.so:system/lib/libnvec.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_audio.so:system/lib/libnvmm_audio.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_image.so:system/lib/libnvmm_image.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_manager.so:system/lib/libnvmm_manager.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_misc.so:system/lib/libnvmm_misc.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_parser.so:system/lib/libnvmm_parser.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_service.so:system/lib/libnvmm_service.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_videorenderer.so:system/lib/libnvmm_videorenderer.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_video.so:system/lib/libnvmm_video.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \
	$(LOCAL_PATH)/proprietary/lib/libnvmm_writer.so:system/lib/libnvmm_writer.so \
	$(LOCAL_PATH)/proprietary/lib/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \
	$(LOCAL_PATH)/proprietary/lib/libnvodm_hdmi.so:system/lib/libnvodm_hdmi.so \
	$(LOCAL_PATH)/proprietary/lib/libnvwinsys.so:system/lib/libnvwinsys.so \
	$(LOCAL_PATH)/proprietary/lib/libnvwsi.so:system/lib/libnvwsi.so \
	$(LOCAL_PATH)/proprietary/lib/libnvtestio.so:system/lib/libnvtestio.so \
	$(LOCAL_PATH)/proprietary/lib/libnvtestresults.so:system/lib/libnvtestresults.so \
	$(LOCAL_PATH)/proprietary/lib/nvmm_jpegenc_test.so:system/lib/nvmm_jpegenc_test.so \
	$(LOCAL_PATH)/proprietary/lib/nvmm_mpeg2vdec_test.so:system/lib/nvmm_mpeg2vdec_test.so \
	$(LOCAL_PATH)/proprietary/lib/nvmm_videodec_test.so:system/lib/nvmm_videodec_test.so \
	$(LOCAL_PATH)/proprietary/lib/nvmm_videoenc_test.so:system/lib/nvmm_videoenc_test.so

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/omxplayer.so:system/lib/omxplayer.so \
	$(LOCAL_PATH)/proprietary/lib/libhwmediaplugin.so:system/lib/libhwmediaplugin.so \
	$(LOCAL_PATH)/proprietary/lib/libhwmediarecorder.so:system/lib/libhwmediarecorder.so

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/bin/nvrm_daemon:system/bin/nvrm_daemon \
	$(LOCAL_PATH)/proprietary/bin/nvrm_daemon_start.sh:system/bin/nvrm_daemon_start.sh

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/bin/nvddk_audiofx_core.axf:system/bin/nvddk_audiofx_core.axf \
	$(LOCAL_PATH)/proprietary/bin/nvddk_audiofx_transport.axf:system/bin/nvddk_audiofx_transport.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_aacdec.axf:system/bin/nvmm_aacdec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_adtsdec.axf:system/bin/nvmm_adtsdec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_audiomixer.axf:system/bin/nvmm_audiomixer.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_h264dec.axf:system/bin/nvmm_h264dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_jpegdec.axf:system/bin/nvmm_jpegdec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_jpegenc.axf:system/bin/nvmm_jpegenc.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_mp2dec.axf:system/bin/nvmm_mp2dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_mp3dec.axf:system/bin/nvmm_mp3dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_mpeg4dec.axf:system/bin/nvmm_mpeg4dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_reference.axf:system/bin/nvmm_reference.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_service.axf:system/bin/nvmm_service.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_sorensondec.axf:system/bin/nvmm_sorensondec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_sw_mp3dec.axf:system/bin/nvmm_sw_mp3dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_vc1dec.axf:system/bin/nvmm_vc1dec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_wavdec.axf:system/bin/nvmm_wavdec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_wmadec.axf:system/bin/nvmm_wmadec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvmm_wmaprodec.axf:system/bin/nvmm_wmaprodec.axf \
	$(LOCAL_PATH)/proprietary/bin/nvrm_avp.axf:system/bin/nvrm_avp.axf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/bin/nvdmmultidisplay:system/bin/nvdmmultidisplay \
	$(LOCAL_PATH)/proprietary/bin/nvtest:system/bin/nvtest \
	$(LOCAL_PATH)/proprietary/bin/tegrastats:system/bin/tegrastats


