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
   vendor/sony/extra-sagami/extra/dsee

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += vendor/sony/extra-sagami/extra/dsee/sepolicy/vendor

# Configs
PRODUCT_COPY_FILES += \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/clearphase_sp_param.bin:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/clearphase_sp_param.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/effect_params.data:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/effect_params.data \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/sforce_param_arm.bin:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/sforce_param_arm.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/sforce_param_qdsp.bin:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/sforce_param_qdsp.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/xloud_param_arm.bin:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/xloud_param_arm.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/xloud_param_qdsp.bin:$(TARGET_COPY_OUT_VENDOR)/etc/sony_effect/xloud_param_qdsp.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/sony_effect/dsx_param_file.bin:$(TARGET_COPY_OUT_VENDOR)/etc/dsx_param_file.bin \
    vendor/sony/extra-sagami/extra/dsee/configs/media_codecs_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_somc.xml

# DSEE-HX Props
PRODUCT_VENDOR_PROPERTIES += \
    audio.sony.effect.use.proxy=true \
    vendor.audio.sony.effect.use.proxy=true \
    vendor.audio.sony.effect.custom.sp_bundle=0x122 \
    vendor.audio.sony.effect.custom.caplus_hs=0x298 \
    vendor.audio.sony.effect.custom.caplus_sp=0x2B8 \
    ro.somc.dseehx.supported=true \
    persist.sony.effect.ahc=true \
    persist.sony.mono_speaker=false \
    persist.sony.effect.clear_audio_plus=false \
    vendor.audio.use.sw.alac.decoder=true

# Audio Packages
PRODUCT_PACKAGES += \
    AudioSettings \
    SoundEnhancement \
    ExtendedAudioService \
    com.sonyericsson.idd_impl \
    com.sonymobile.getmore.api \
    semc_audioeffectif \
    sonyaudioeffect

# Proprietary Blobs
PRODUCT_COPY_FILES += \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/etc/permissions/com.sonyericsson.idd.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonyericsson.idd.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/etc/permissions/com.sonymobile.getmore.api.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.sonymobile.getmore.api.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/etc/permissions/semc_audioeffectif.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/semc_audioeffectif.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/etc/permissions/sonyaudioeffect.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/sonyaudioeffect.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system_ext/etc/permissions/privapp-com.sonyericsson.soundenhancement.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.sonyericsson.soundenhancement.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system_ext/etc/permissions/privapp-com.sonymobile.audioutil.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.sonymobile.audioutil.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system_ext/etc/sysconfig/config-com.sonyericsson.soundenhancement.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.sonyericsson.soundenhancement.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system_ext/etc/sysconfig/config-com.sonymobile.audioutil.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.sonymobile.audioutil.xml \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib/libaudio-resampler.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libaudio-resampler.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib/libhscomp.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libhscomp.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib/libhscomp_jni.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libhscomp_jni.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib64/libaudio-resampler.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libaudio-resampler.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib64/libhscomp.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libhscomp.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/system/lib64/libhscomp_jni.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libhscomp_jni.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/soundfx/libeffectproxy.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libeffectproxy.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/soundfx/libsonypostprocbundle.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libsonypostprocbundle.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/soundfx/libsonysweffect.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libsonysweffect.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/libAlacSwDec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libAlacSwDec.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/libOmxAlacDec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOmxAlacDec.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/libOmxAlacDecSw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOmxAlacDecSw.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/libsonydseehxwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsonydseehxwrapper.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib/libstagefright_soft_somcalacdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_somcalacdec.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib64/libAlacSwDec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libAlacSwDec.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib64/libOmxAlacDec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libOmxAlacDec.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib64/libOmxAlacDecSw.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libOmxAlacDecSw.so \
    vendor/sony/extra-sagami/extra/dsee/proprietary/vendor/lib64/libsonydseehxwrapper.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsonydseehxwrapper.so