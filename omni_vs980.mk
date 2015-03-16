# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := omni_vs980

# Inherit AOSP device configuration for VS980
$(call inherit-product, device/lge/vs980/full_vs980.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/g2_vzw/g2:4.4.2/KOT49I.VS98024A/VS98024A.1394607468:user/release-keys \
    PRIVATE_BUILD_DESC="g2_vzw-user 4.4.2 KOT49I.VS98024A VS98024A.1394607468 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon
