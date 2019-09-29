# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=288m \
    dalvik.vm.heapsize=768m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril.config=simactivation

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.maxpermixer=5

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=560

# Display feature support
# bit0-ColorPrefer bit1-EyeCare bit2-AD bit3-CE bit4-CABC bit5-SRGB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.display.support=55

#Disable offload except for PCM
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=0

#Disable 16 bit PCM offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.16bit.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.passthrough=false

#Enable 24 bit PCM offload by default
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.pcm.24bit.enable=true

# default minimum length allowed for offload
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.min.duration.secs=15

#System property for FM transmitter
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false
