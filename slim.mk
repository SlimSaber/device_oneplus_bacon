# Release name
PRODUCT_RELEASE_NAME := bacon

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := slim_bacon
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := One A0001
PRODUCT_MANUFACTURER := OnePlus

TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=bacon BUILD_FINGERPRINT="fingerprint: oneplus/bacon/A0001:4.4.2/KVT49L/XNPH22R:user/release-keys" PRIVATE_BUILD_DESC="bacon-user 4.4.2 KVT49L XNPH22R release-keys"

# Override default boot animation
PRODUCT_BOOTANIMATION := device/oneplus/bacon/bootanimation.zip
