LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-com.google.android.gms.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE := microg-permissions.xml
# LOCAL_MODULE_TAGS := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/default-permissions
# LOCAL_SRC_FILES := $(LOCAL_MODULE)
# include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := microg-a5k.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := GmsCore
LOCAL_SRC_FILES := com.google.android.gms-nanodroid.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := keys/fanos/testkey
LOCAL_OVERRIDES_PACKAGES := com.qualcomm.location
LOCAL_REQUIRED_MODULES := \
	privapp-permissions-com.google.android.gms.xml \
#	microg-permissions.xml \
	microg-a5k.xml
include $(BUILD_PREBUILT)

