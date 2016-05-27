# Copyright (C) 2015 The CyanogenMod Project
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
#

# Also get non-open-source specific aspects if available This may change in the future!
$(call inherit-product-if-exists, vendor/samsung/j53gxx/j53gxx-vendor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/j53gxx/overlay

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.multisim.simslotcount=2 \
    persist.radio.multisim.config=dsds \
    rild.libpath2=/system/lib/libsec-ril-dsds.so

LOCAL_OVERRIDES_PACKAGES += \
    libnfc_nci \
    NfcNci \
    Tag \
    com.android.nfc_extras

# Inherit from j5-common
$(call inherit-product, device/samsung/j5-common/common.mk)
