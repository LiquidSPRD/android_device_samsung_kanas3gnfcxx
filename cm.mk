## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := kanas3gnfcxx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_kanas3gnfcxx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kanas3gnfcxx
PRODUCT_NAME := cm_kanas3gnfcxx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G355HN
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone
