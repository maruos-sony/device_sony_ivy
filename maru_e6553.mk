# Copyright 2014 The Android Open Source Project
# Copyright 2016 The Maru OS Project
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

TARGET_KERNEL_CONFIG := aosp_kitakami_ivy_defconfig

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/ivy/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

# allow /vendor/maruos files
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_NAME := maru_e6553
PRODUCT_DEVICE := ivy
PRODUCT_MODEL := Xperia Z3+ (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
