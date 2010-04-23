#!/bin/sh

mkdir -p proprietary

adb pull /system/usr/keychars/nvec_keyboard.kcm.bin proprietary/usr/keychars
adb pull /system/usr/keychars/tegra-kbc.kcm.bin proprietary/usr/keychars
adb pull /system/usr/keychars/usb_keyboard_us102.kcm.bin proprietary/usr/keychars

adb pull /system/framework/com.nvidia.display.jar proprietary/framework
adb pull /system/lib/libnvidia_display_jni.so proprietary/lib
adb pull /system/etc/permissions/com.nvidia.display.xml proprietary/etc/permissions

adb pull /system/framework/com.nvidia.graphics.jar proprietary/framework
adb pull /system/lib/libnvidia_graphics_jni.so proprietary/lib
adb pull /system/etc/permissions/com.nvidia.graphics.xml proprietary/etc/permissions

adb pull /system/lib/libaudio.so proprietary/lib
adb pull /system/lib/libaudiopolicy.so proprietary/lib
adb pull /system/lib/libcamera.so proprietary/lib

adb pull /system/lib/gles2_sanity.so proprietary/lib
adb pull /system/lib/libcgdrv.so proprietary/lib
adb pull /system/lib/egl/libEGL_tegra.so proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_tegra.so proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_tegra.so proprietary/lib/egl

adb pull /system/lib/hw/gralloc.tegra.so proprietary/lib/hw
adb pull /system/lib/hw/lights.tegra.so proprietary/lib/hw
adb pull /system/lib/hw/overlay.tegra.so proprietary/lib/hw

adb pull /system/lib/hw/g_android.ko proprietary/lib/hw
adb pull /system/lib/hw/gadgetfs.ko proprietary/lib/hw

adb pull /system/bin/nv_hciattach proprietary/bin

adb pull /system/etc/bluez/bluecore6.psr proprietary/etc/bluez

adb pull /system/etc/dhcpcd/dhcpcd.conf proprietary/etc/dhcpcd

adb pull /system/etc/wifi/wpa_supplicant.conf proprietary/etc/wifi

adb pull /system/lib/hw/wlan/ar6000.ko proprietary/lib/hw/wlan
adb pull /system/lib/hw/wlan/athwlan.bin.z77 proprietary/lib/hw/wlan
adb pull /system/lib/hw/wlan/data.patch.hw2_0.bin proprietary/lib/hw/wlan
adb pull /system/lib/hw/wlan/eeprom.bin proprietary/lib/hw/wlan
adb pull /system/lib/hw/wlan/eeprom.data proprietary/lib/hw/wlan

adb pull /system/etc/pvnvomx.cfg proprietary/etc
adb pull /system/lib/libpvnvomx.so proprietary/lib
adb pull /system/lib/libopencorehw.so proprietary/lib

adb pull /system/lib/libnvrm.so proprietary/lib
adb pull /system/lib/libnvos.so proprietary/lib
adb pull /system/lib/libnvdispmgr_d.so proprietary/lib
adb pull /system/lib/libnvrm_graphics.so proprietary/lib
adb pull /system/lib/libnvddk_audiofx.so proprietary/lib
adb pull /system/lib/libnvodm_query.so proprietary/lib
adb pull /system/lib/libnvodm_misc.so proprietary/lib
adb pull /system/lib/libnvdispatch_helper.so proprietary/lib

adb pull /system/lib/libnvomx.so proprietary/lib
adb pull /system/lib/libnvmm.so proprietary/lib
adb pull /system/lib/libnvmm_utils.so proprietary/lib
adb pull /system/lib/libnvodm_imager.so proprietary/lib
adb pull /system/lib/libnvmm_tracklist.so proprietary/lib
adb pull /system/lib/libnvmm_contentpipe.so proprietary/lib
adb pull /system/lib/libnvsm.so proprietary/lib
adb pull /system/lib/libnvomxilclient.so proprietary/lib
adb pull /system/lib/libnvddk_2d_v2.so proprietary/lib
adb pull /system/lib/libnvddk_2d.so proprietary/lib
adb pull /system/lib/libnvddk_aes.so proprietary/lib
adb pull /system/lib/libnvapputil.so proprietary/lib
adb pull /system/lib/libnvec.so proprietary/lib
adb pull /system/lib/libnvmm_audio.so proprietary/lib
adb pull /system/lib/libnvmm_image.so proprietary/lib
adb pull /system/lib/libnvmm_manager.so proprietary/lib
adb pull /system/lib/libnvmm_misc.so proprietary/lib
adb pull /system/lib/libnvmm_parser.so proprietary/lib
adb pull /system/lib/libnvmm_service.so proprietary/lib
adb pull /system/lib/libnvmm_videorenderer.so proprietary/lib
adb pull /system/lib/libnvmm_video.so proprietary/lib
adb pull /system/lib/libnvmm_vp6_video.so proprietary/lib
adb pull /system/lib/libnvmm_writer.so proprietary/lib
adb pull /system/lib/libnvodm_dtvtuner.so proprietary/lib
adb pull /system/lib/libnvodm_hdmi.so proprietary/lib
adb pull /system/lib/libnvwinsys.so proprietary/lib
adb pull /system/lib/libnvwsi.so proprietary/lib
adb pull /system/lib/libnvtestio.so proprietary/lib
adb pull /system/lib/libnvtestresults.so proprietary/lib
adb pull /system/lib/nvmm_jpegenc_test.so proprietary/lib
adb pull /system/lib/nvmm_mpeg2vdec_test.so proprietary/lib
adb pull /system/lib/nvmm_videodec_test.so proprietary/lib
adb pull /system/lib/nvmm_videoenc_test.so proprietary/lib

adb pull /system/lib/omxplayer.so proprietary/lib
adb pull /system/lib/libhwmediaplugin.so proprietary/lib
adb pull /system/lib/libhwmediarecorder.so proprietary/lib

adb pull /system/bin/nvrm_daemon proprietary/bin
adb pull /system/bin/nvrm_daemon_start.sh proprietary/bin

adb pull /system/bin/nvddk_audiofx_core.axf proprietary/bin
adb pull /system/bin/nvddk_audiofx_transport.axf proprietary/bin
adb pull /system/bin/nvmm_aacdec.axf proprietary/bin
adb pull /system/bin/nvmm_adtsdec.axf proprietary/bin
adb pull /system/bin/nvmm_audiomixer.axf proprietary/bin
adb pull /system/bin/nvmm_h264dec.axf proprietary/bin
adb pull /system/bin/nvmm_jpegdec.axf proprietary/bin
adb pull /system/bin/nvmm_jpegenc.axf proprietary/bin
adb pull /system/bin/nvmm_mp2dec.axf proprietary/bin
adb pull /system/bin/nvmm_mp3dec.axf proprietary/bin
adb pull /system/bin/nvmm_mpeg4dec.axf proprietary/bin
adb pull /system/bin/nvmm_reference.axf proprietary/bin
adb pull /system/bin/nvmm_service.axf proprietary/bin
adb pull /system/bin/nvmm_sorensondec.axf proprietary/bin
adb pull /system/bin/nvmm_sw_mp3dec.axf proprietary/bin
adb pull /system/bin/nvmm_vc1dec.axf proprietary/bin
adb pull /system/bin/nvmm_wavdec.axf proprietary/bin
adb pull /system/bin/nvmm_wmadec.axf proprietary/bin
adb pull /system/bin/nvmm_wmaprodec.axf proprietary/bin
adb pull /system/bin/nvrm_avp.axf proprietary/bin

adb pull /system/bin/nvdmmultidisplay proprietary/bin
adb pull /system/bin/nvtest proprietary/bin
adb pull /system/bin/tegrastats proprietary/bin


