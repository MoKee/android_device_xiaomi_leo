DEVICE_PATH := device/xiaomi/leo
BOARD_PLATFORM := msm8994

# Get non-open-source specific aspects
$(call inherit-product, device/xiaomi/msm8994-common/msm8994-common.mk)
$(call inherit-product, vendor/xiaomi/leo/leo-vendor.mk)

# System properties
-include $(DEVICE_PATH)/system_prop.mk

# Haters gonna hate..
PRODUCT_CHARACTERISTICS := nosdcard

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/media/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml

# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/cyttsp_button.kl:system/vendor/usr/keylayout/cyttsp_button.kl \
    $(DEVICE_PATH)/keylayout/synaptics_dsx.kl:system/vendor/usr/keylayout/synaptics_dsx.kl

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8994

# Screen density
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_NAME := full_leo
PRODUCT_DEVICE := leo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Note Pro

# Ramdisk
PRODUCT_PACKAGES += \
    init.target.rc