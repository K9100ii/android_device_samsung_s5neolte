LOCAL_PATH := $(call my-dir)

# Init scripts

include $(CLEAR_VARS)
LOCAL_MODULE            := init.baseband.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.baseband.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE           := init.vendor.rilcommon.rc
LOCAL_MODULE_TAGS      := optional
LOCAL_MODULE_CLASS     := ETC
LOCAL_SRC_FILES        := etc/init.vendor.rilcommon.rc
LOCAL_MODULE_PATH      := $(TARGET_OUT_VENDOR_ETC)/init/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.vendor.rilchip.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.vendor.rilchip.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.target.rc
LOCAL_MODULE_TAGS       := optional
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.target.rc
LOCAL_MODULE_PATH       := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)

