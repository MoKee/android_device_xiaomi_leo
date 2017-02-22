# Release name
PRODUCT_RELEASE_NAME := libra

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/device_libra.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := libra
PRODUCT_NAME := lineage_libra
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi
