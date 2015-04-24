android_device_samsung_core2
============================

Device configuration for Samsung Galaxy Core II SM-G355HN
How to Build
---------------

Initialise from CyanogenMod:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Use the following local manifest:

    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
    <project name="Y300-0100/android_device_samsung_kanas3gnfcxx" path="device/samsung/kanas3gnfcxx" remote="github" revision="master" />
    <project name="Y300-0100/android_kernel_samsung_SM-G355HN_XEC" path="kernel/samsung/kanas3gnfcxx" remote="github" revision="master" />
    <project name="Y300-0100/proprietary_vendor_samsung" path="vendor/samsung/kanas3gnfcxx" remote="github" revision="master" />
    <project name="CyanogenMod/android_packages_apps_SamsungServiceMode" path="packages/apps/SamsungServiceMode" remote="github" revision="cm-11.0" />
    <project name="CyanogenMod/android_hardware_samsung" path="hardware/samsung" remote="github" revision="cm-11.0" />
    </manifest>


Sync and build:

    repo sync -j4
    vendor/cm/get-prebuilts
    . build/envsetup.sh
    brunch G355HN

