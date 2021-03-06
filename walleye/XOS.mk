# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080


# Inherit halogenOS product configuration
$(call inherit-product, vendor/xos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/muskie/aosp_walleye.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := XOS_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=walleye \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM2.171019.029 4657601 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM2.171019.029/4657601:user/release-keys
$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)
