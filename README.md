android_device_samsung_core2
============================

Device configuration for Samsung Galaxy Core II SM-G355HN
How to Build
---------------

Repo is a tool that makes it easier to work with Git in the context of Android.

To install Repo:

 

   Create bin directory in your home directory and that it is included in your path:

    mkdir ~/bin
    PATH=~/bin:$PATH
   Download the Repo tool and ensure that it is executable:

    curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
    chmod a+x ~/bin/repo
    Create a directory for your working files:
    mkdir android
    
your WORKING_DIRECTORY (android folder)

cd android
Run repo init to bring down the latest version of Repo with all its most recent bug fixes. You must specify a URL for the manifest, which specifies where the various repositories included in the Android source will be placed within your working directory.

NOTE:
.repo is hidden in android folder. To see it hit Ctrl+h in open android folder.

repo init:

    repo init -u https://android.googlesource.com/platform/manifest

repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

    mkdir .repo/local_manifests
    
Copy local_manifest.xml to .repo/local_manifests

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
    brunch kanas3gnfcxx

