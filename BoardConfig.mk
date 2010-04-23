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
# Product-specific compile-time definitions.
#

# this one is always needed !!!
TARGET_BOOTLOADER_BOARD_NAME := tegra

TARGET_BOARD_PLATFORM := tegra
#TARGET_BOARD_PLATFORM_GPU := 

TARGET_CPU_ABI := armeabi
#TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a

TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true

TARGET_HAVE_TEGRA_ERRATA_657451 := true

# Kernel/Bootloader
#
TARGET_NO_BOOTLOADER := true

TARGET_NO_KERNEL := false
BOARD_KERNEL_CMDLINE := mem=448M@0M nvmem=64M@448M mem=512M@512M vmalloc=320M video=tegrafb console=ttyS0,115200n8 usbcore.old_scheme_first=1 tegraboot=nand tegrapart=recovery:1b80:a00:800,boot:2680:1000:800,system:3780:ef40:800,cache:128c0:4000:800,userdata:16a40:294c0:800
# BOARD_KERNEL_BASE :=0x20000000

TARGET_NO_RECOVERY := true

# Modem
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT_RC := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

BOARD_USES_GENERIC_AUDIO := false

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CSR := true

TARGET_HARDWARE_3D := false

#BOARD_GPS_LIBRARIES := libgps

BOARD_EGL_CFG := vendor/nvidia/harmony/egl.cfg

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 000e0000 00020000 "misc"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00280000 00020000 "boot"
# mtd3: 07800000 00020000 "system"
# mtd4: 07800000 00020000 "cache"
# mtd5: 0c440000 00020000 "userdata"
# mtd6: 00200000 00020000 "crashdata"
BOARD_BOOTIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00380000)
BOARD_RECOVERYIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x00480000)
BOARD_SYSTEMIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x08c60000)
BOARD_USERDATAIMAGE_MAX_SIZE := $(call image-size-from-data-size,0x105c0000)
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

USE_CAMERA_STUB := false

