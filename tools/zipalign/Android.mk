# 
# Copyright 2008 The Android Open Source Project
#
# Zip alignment tool
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_PREBUILT_EXECUTABLES := \
	zipalign

LOCAL_MODULE := zipalign

include $(BUILD_HOST_PREBUILT)
