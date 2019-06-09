LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := com.android.vending.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fakestore-permissions.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/default-permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# include $(CLEAR_VARS)
# LOCAL_MODULE := fakestore-permissions.xml
# LOCAL_MODULE_TAGS := optional
# LOCAL_MODULE_CLASS := ETC
# LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/default-permissions
# LOCAL_SRC_FILES := $(LOCAL_MODULE)
# include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := FakeStore
LOCAL_SRC_FILES := FakeStore.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := \
	com.android.vending.xml \
	fakestore-permissions.xml
include $(BUILD_PREBUILT)

