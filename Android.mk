#
# Copyright 2015-2016 Preetam J. D'Souza
# Copyright 2016 The Maru OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libmaru
LOCAL_SRC_FILES := mlib.c
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := mflinger
LOCAL_SRC_FILES := mflinger.cpp
LOCAL_CFLAGS := -DLOG_TAG=\"mflinger\"
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libgui \
    libmaru
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := mtclient
LOCAL_SRC_FILES := test-client.c
LOCAL_SHARED_LIBRARIES := libmaru
include $(BUILD_EXECUTABLE)
