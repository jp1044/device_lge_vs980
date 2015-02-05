# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vs980
PRODUCT_NAME := aosp_vs980
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-VS980
PRODUCT_MANUFACTURER := lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=lge/g2_vzw/g2:4.4.2/KOT49I.VS98024A/VS98024A.1394607468:user/release-keys \
    PRIVATE_BUILD_DESC="g2_vzw-user 4.4.2 KOT49I.VS98024A VS98024A.1394607468 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-verizon

# Inherit device configuration
$(call inherit-product, device/lge/vs980/device.mk)

PRODUCT_PACKAGES += \
    FileManager \
    Launcher3
