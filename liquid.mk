# Inherit device configuration
$(call inherit-product, device/samsung/kanas3gnfcxx/full_kanas3gnfcxx.mk)

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)
$(call inherit-product, device/samsung/kanas3gnfcxx/device.mk)

PRODUCT_NAME := liquid_kanas3gnfcxx
PRODUCT_DEVICE := kanas3gnfcxx

