-include device/xiaomi/msm8994-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/leo

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_BOOTLOADER_BOARD_NAME := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430

# Arch
TARGET_CPU_VARIANT := cortex-a53

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := leo_user_defconfig

# Partition
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744830464 #1920M
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59852700672 #58G

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := NotePro,leo

# Security patch level
VENDOR_SECURITY_PATCH := 2017-10-01

# Shims
TARGET_LD_SHIM_LIBS += /system/vendor/lib/hw/camera.vendor.msm8994.so|libshim_camera.so

# Inherit from the proprietary version
-include vendor/xiaomi/leo/BoardConfigVendor.mk