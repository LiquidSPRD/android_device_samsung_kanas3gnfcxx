$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kanas3gnfcxx/kanas3gnfcxx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kanas3gnfcxx/overlay

LOCAL_PATH := device/samsung/kanas3gnfcxx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kanas3gnfcxx
PRODUCT_DEVICE := kanas3gnfcxx

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/kanas3gnfcxx/rootdir/init.kanas3gnfc.rc:root/init.kanas3gnfc.rc \
	device/samsung/kanas3gnfcxx/rootdir/init.kanas3gnfc_base.rc:root/init.kanas3gnfc_base.rc \
	device/samsung/kanas3gnfcxx/rootdir/init.sc8830.rc:root/init.sc8830.rc \
	device/samsung/kanas3gnfcxx/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
	device/samsung/kanas3gnfcxx/rootdir/init.sc8830_ss.rc:root/init.sc8830_ss.rc \
	device/samsung/kanas3gnfcxx/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
	device/samsung/kanas3gnfcxx/rootdir/init.board.rc:root/init.board.rc \
	device/samsung/kanas3gnfcxx/rootdir/modem_control:root/modem_control
