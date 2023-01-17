PRODUCT_SOONG_NAMESPACES += \
    sony/extra

# SonyFramework
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyframework/product/,$(TARGET_COPY_OUT_SYSTEM)/product/)

# Camera
 PRODUCT_PACKAGES += \
    PhotoPro \
    CinemaPro \
    VideoPro \
    CameraPanorama \
    CreativeEffect \
    PortraitSelfie
   
# SonyHiRes
PRODUCT_COPY_FILES += \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyhires/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyhires/system_ext/,$(TARGET_COPY_OUT_SYSTEM_EXT)/) \
   $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sonyhires/vendor/,$(TARGET_COPY_OUT_VENDOR)/)

# SonyHiRes PKGs
 PRODUCT_PACKAGES += \
    SoundEnhancement \
    360RASystem \
    360RASettings \
    AudioUtil \
    daxUI \
    daxService

# Controller Support
 PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/keylayout/,$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout)