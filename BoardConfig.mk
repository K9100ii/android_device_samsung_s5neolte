#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from universal7580-common
include device/samsung/universal7580-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/s5neolte

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

TARGET_OTA_ASSERT_DEVICE := s5neolte,s5neoltexx,s5neolteub,s5neoltevl

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# RIL
BOARD_PROVIDES_LIBRIL := true
ENABLE_VENDOR_RIL_SERVICE := true
TARGET_USES_VND_SECRIL := true

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := libinit_s5neolte

# Partitions
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12096372736

# blockdev --getbsz /dev/block/mmcblk0p23
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_KERNEL_CONFIG := lineageos_s5neolte_defconfig

# Manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# Shim
TARGET_LD_SHIM_LIBS += \
    /system/lib/libcamera_client.so|/vendor/lib/libcamera_client_shim.so \
    /system/lib/libstagefright.so|/system/lib/libstagefright_shim.so \
    /system/lib/libexynoscamera.so|/vendor/lib/libexynoscamera_shim.so

# SELinux
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_SEPOLICY_DIRS += device/samsung/s5neolte/sepolicy
