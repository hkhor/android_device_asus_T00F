# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our omni product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/asus/T00F/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/T00F/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_T00F
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00F
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := T00F

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_T00F \
    BUILD_FINGERPRINT=asus/WW_a500cg/ASUS_T00F:5.0/LRX21V/WW_user_3.24.40.87_20151222_34:user/release-keys \
    PRIVATE_BUILD_DESC="a500cg-user 5.0 LRX21V WW_user_3.24.40.87_20151222_34 release-keys"
