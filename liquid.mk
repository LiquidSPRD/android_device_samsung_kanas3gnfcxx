# Inherit device configuration
$(call inherit-product, device/samsung/kanas3gnfcxx/full_kanas3gnfcxx.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := kanas3gnfcxx

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kanas3gnfcxx
PRODUCT_NAME := liquid_kanas3gnfcxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G355HN
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
