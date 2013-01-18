# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Video decoding
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.default \
    libgenlock \
    libI420colorconvert \
    libmemalloc \
    libqdutils \
    liboverlay \
    libtilerenderer \
    libQcomUI 

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    audio_policy.conf \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.pico \
    sensors.msm7x27a \
    gps.pico    
    
# Camera
PRODUCT_PACKAGES += \
    camera.default    
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory     

# Init
PRODUCT_COPY_FILES += \
    device/htc/pico/files/init.pico.rc:root/init.pico.rc \
    device/htc/pico/files/ueventd.pico.rc:root/ueventd.pico.rc \
    device/htc/pico/files/init.pico.usb.rc:root/init.pico.usb.rc \
    
# Camera
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
    vendor/htc/pico/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/htc/pico/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/htc/pico/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/htc/pico/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    vendor/htc/pico/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    vendor/htc/pico/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    vendor/htc/pico/proprietary/bin/awb_camera:system/bin/awb_camera \
    vendor/htc/pico/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    vendor/htc/pico/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/pico/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/pico/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    
# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/lib/libv8.so:obj/lib/libv8.so \
    device/htc/pico/prebuilt/lib/libqc-opt.so:obj/lib/libqc-opt.so

# OMX
#    vendor/htc/pico/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
#    vendor/htc/pico/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
#    vendor/htc/pico/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
#    vendor/htc/pico/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
#    vendor/htc/pico/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
#    vendor/htc/pico/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
#    vendor/htc/pico/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
#    vendor/htc/pico/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \

PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/omx/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/htc/pico/prebuilt/omx/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    device/htc/pico/prebuilt/omx/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    device/htc/pico/prebuilt/omx/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/pico/prebuilt/omx/libmm-abl.so:system/lib/libmm-abl.so \
    device/htc/pico/prebuilt/omx/libmm-abl-oem.so:system/lib/libmm-abl-oem.so \
    device/htc/pico/prebuilt/omx/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    device/htc/pico/prebuilt/omx/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/htc/pico/prebuilt/omx/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    device/htc/pico/prebuilt/omx/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    device/htc/pico/prebuilt/omx/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    device/htc/pico/prebuilt/omx/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    device/htc/pico/prebuilt/omx/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    device/htc/pico/prebuilt/omx/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    device/htc/pico/prebuilt/omx/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/htc/pico/prebuilt/omx/libOmxCore.so:system/lib/libOmxCore.so \
    device/htc/pico/prebuilt/omx/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    device/htc/pico/prebuilt/omx/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    device/htc/pico/prebuilt/omx/libOmxEvrcHwDec.so:system/lib/libOmxEvrcHwDec.so \
    device/htc/pico/prebuilt/omx/libOmxIttiamVdec.so:system/lib/libOmxIttiamVdec.so \
    device/htc/pico/prebuilt/omx/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    device/htc/pico/prebuilt/omx/libOmxOn2Dec.so:system/lib/libOmxOn2Dec.so \
    device/htc/pico/prebuilt/omx/libOmxQcelp13Dec.so:system/lib/libOmxQcelp13Dec.so \
    device/htc/pico/prebuilt/omx/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    device/htc/pico/prebuilt/omx/libOmxQcelpHwDec.so:system/lib/libOmxQcelpHwDec.so \
    device/htc/pico/prebuilt/omx/libOmxrv9Dec.so:system/lib/libOmxrv9Dec.so \
    device/htc/pico/prebuilt/omx/libOmxVp8Dec.so:system/lib/libOmxVp8Dec.so \
    device/htc/pico/prebuilt/omx/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    device/htc/pico/prebuilt/omx/libOmxWmvDec.so:system/lib/libOmxWmvDec.so
    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 
    
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Releasetools
PRODUCT_COPY_FILES += \
     device/htc/pico/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/pico/files/etc/vold.fstab:system/etc/vold.fstab 

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/pico/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/pico/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
    
# Audio
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/pico/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/pico/prebuilt/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/pico/prebuilt/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/pico/prebuilt/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/pico/prebuilt/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    vendor/htc/pico/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/htc/pico/proprietary/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \
    
# Prebuilt Sensors
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/sensors.pico.so:system/lib/hw/sensors.pico.so \

# 3D(Jellybean Blobs-Early Stage)
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/pico/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/pico/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/pico/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/pico/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/pico/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/pico/prebuilt/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/pico/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/pico/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/pico/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/pico/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/pico/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/pico/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/pico/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/htc/pico/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so 
    
# RIL
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/lib/libv8.so:system/lib/libv8.so \
    vendor/htc/pico/proprietary/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/pico/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so \
#    device/htc/pico/prebuilt/lib/libdnshostprio.so:system/lib/libdnshostprio.so \
#    device/htc/pico/prebuilt/lib/libtcpfinaggr.so:system/lib/libtcpfinaggr.so \
#    device/htc/pico/prebuilt/lib/pp_proc_plugin.so:system/lib/pp_proc_plugin.so \
#    device/htc/pico/prebuilt/lib/qnet-plugin.so:system/lib/qnet-plugin.so \
#    device/htc/pico/prebuilt/lib/tcp-connections.so:system/lib/tcp-connections.so \
#    device/htc/pico/prebuilt/lib/libdiag.so:system/lib/libdiag.so \
#    device/htc/pico/prebuilt/lib/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \
#    device/htc/pico/prebuilt/lib/libdsutils.so:system/lib/libdsutils.so \
#    device/htc/pico/prebuilt/lib/libidl.so:system/lib/libidl.so \
#    device/htc/pico/prebuilt/lib/libqdi.so:system/lib/libqdi.so \
#    device/htc/pico/prebuilt/lib/libqdp.so:system/lib/libqdp.so \
#    device/htc/pico/prebuilt/lib/libqmi.so:system/lib/libqmi.so \
#    device/htc/pico/prebuilt/lib/libqmiservices.so:system/lib/libqmiservices.so \
 
# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd:system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd \

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/pico-keypad.kcm.bin:system/usr/keychars/pico-keypad.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/pico/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pico/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/pico/prebuilt/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/pico/prebuilt/usr/keylayout/pico-keypad.kl:system/usr/keylayout/pico-keypad.kl \
    device/htc/pico/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pico/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/pico/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/pico/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/pico/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=pico \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=40

PRODUCT_NAME := cm_pico
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := pico
PRODUCT_MODEL := HTC Explorer A310e
PRODUCT_MANUFACTURER := HTC
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
