#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   vendor/sony/extra-sagami/extra/sound

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += vendor/sony/extra-sagami/extra/sound/sepolicy/vendor

# Configs
PRODUCT_COPY_FILES += \
    vendor/sony/extra-sagami/extra/sound/configs/media_codecs_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_somc.xml \
    vendor/sony/extra-sagami/extra/sound/configs/media_codecs_sony_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sony_c2_audio.xml

# Audio Settings Props
PRODUCT_VENDOR_PROPERTIES += \
    audio.sony.effect.use.proxy=true \
    vendor.audio.sony.effect.use.proxy=true \
    ro.somc.soundhx.supported=true \
    persist.sony.effect.ahc=true \
    vendor.audio.use.sw.alac.decoder=true

# Audio Packages
PRODUCT_PACKAGES += \
    AudioSettings \
    SoundEnhancement \
    ExtendedAudioService \
    360RASystem \
    360RASettings \
    com.sonyericsson.idd_impl \
    com.sonymobile.getmore.api \
    semc_audioeffectif \
    sonyaudioeffect

# Proprietary Blobs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sound/proprietary/system/,$(TARGET_COPY_OUT_SYSTEM)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sound/proprietary/system_ext/,$(TARGET_COPY_OUT_SYSTEM_EXT)/) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/extra/sound/proprietary/system/,$(TARGET_COPY_OUT_VENDOR)/)