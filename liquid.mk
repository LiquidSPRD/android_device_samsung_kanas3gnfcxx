# Inherit device configuration
$(call inherit-product, device/samsung/kanas3gnfcxx/full_kanas3gnfcxx.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

PRODUCT_NAME := liquid_kanas3gnfcxx
PRODUCT_DEVICE := kanas3gnfcxx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-G355HN \
    PRODUCT_NAME=kanas3gnfcxx \
    PRODUCT_DEVICE=kanas3gnfcxx \
    TARGET_DEVICE=klimtwifi \

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
