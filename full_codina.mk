#
# Copyright (C) 2014 NovaFusion https://github.com/NovaFusion
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

PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/samsung/codina/codina.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Galaxy S uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.ril.callstate_extra_int=true \
  ro.moz.ril.callstate_down_is_up=true \
  ro.moz.ril.dial_emergency_call=true

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_codina
PRODUCT_DEVICE := codina
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I8160
