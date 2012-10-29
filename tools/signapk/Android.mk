#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

# the signapk tool (a .jar application used to sign packages)
# ============================================================
LOCAL_MODULE := signapk
include $(BUILD_HOST_JAVA_LIBRARY)
LOCAL_PREBUILT_JAVA_LIBRARIES := \
	signapk$(COMMON_JAVA_PACKAGE_SUFFIX)

ifeq ($(TARGET_BUILD_APPS),)
# The post-build signing tools need signapk.jar, but we don't
# need this if we're just doing unbundled apps.
$(call dist-for-goals,droidcore,$(LOCAL_INSTALLED_MODULE))
endif
