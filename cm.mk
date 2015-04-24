## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/samsung/kanas3gnfcxx/kanas3gnfcxx-vendor.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyCoreII

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kanas3gnfcxx/device_kanas3gnfcxx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kanas3gnfcxx
PRODUCT_NAME := cm_kanas3gnfcxx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G355HN

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=kanas3gnfcxx TARGET_DEVICE=kanas3gnfcxx BUILD_FINGERPRINT=samsung/kanas3gnfcxx/kanas3gnfc:4.4.2/KOT49H/G355HNXXU0ANK2:user/release-keys PRIVATE_BUILD_DESC="kanas3gnfc:4.4.2/KOT49H/G355HNXXU0ANK2:user/release-keys"
