# WARNING!!! THIS IS AUTO-GENERATED FILE!!! DO NOT EDIT IT MANUALLY!!!

# CrystaX NDK contains code from libc library of FreeBSD project which by-turn contains
# code from other projects. Also, several another open-source projects used, such as GNU gcc,
# GNU binutils, LLVM clang, LLVM libc++ etc. To see specific authors and/or licenses, look
# into appropriate source file. Here is license for those parts which are not derived from
# any other projects but written by CrystaX.
#
# Copyright (c) 2011-2015 CrystaX.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
#    1. Redistributions of source code must retain the above copyright notice, this list of
#       conditions and the following disclaimer.
#
#    2. Redistributions in binary form must reproduce the above copyright notice, this list
#       of conditions and the following disclaimer in the documentation and/or other materials
#       provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY CrystaX ''AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL CrystaX OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# The views and conclusions contained in the software and documentation are those of the
# authors and should not be interpreted as representing official policies, either expressed
# or implied, of CrystaX.

LOCAL_PATH := $(call my-dir)

ifeq (,$(filter gnustl_% c++_%,$(APP_STL)))
$(error $(strip \
    We do not support APP_STL '$(APP_STL)' for Boost libraries! \
    Please use either "gnustl_shared", "gnustl_static", "c++_shared" or "c++_static". \
))
endif

__boost_libstdcxx_subdir := $(strip \
    $(strip $(if $(filter c++_%,$(APP_STL)),\
        llvm,\
        gnu\
    ))-$(strip $(if $(filter c++_%,$(APP_STL)),\
        $(if $(filter clang%,$(NDK_TOOLCHAIN_VERSION)),$(patsubst clang%,%,$(NDK_TOOLCHAIN_VERSION)),3.6),\
        $(if $(filter clang%,$(NDK_TOOLCHAIN_VERSION)),4.9,$(NDK_TOOLCHAIN_VERSION))\
    ))\
)

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter arm64-v8a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_locale_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_locale-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python3_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python3-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_signals_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_signals-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_locale_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_locale-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python-clang-mt-a32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python3_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python3-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_signals_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_signals-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter armeabi-v7a-hard,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_locale_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_locale-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python3_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python3-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_signals_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_signals-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_locale_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_locale-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_python3_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_python3-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_signals_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_signals-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter mips64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-a64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-x32-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_atomic_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_atomic-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_chrono_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_chrono-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_container_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_container-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_context_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_context-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_coroutine_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_coroutine-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_context_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_date_time-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_exception_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_exception-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_filesystem_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_filesystem-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_graph_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_graph-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_iostreams_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_iostreams-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += z_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_system_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_log_setup_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_log_setup-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_log_static
LOCAL_STATIC_LIBRARIES += boost_regex_static
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99f-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_c99l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_c99l-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1f_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1f-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_math_tr1l_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_math_tr1l-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_prg_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_prg_exec_monitor-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_program_options_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_program_options-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_random_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_random-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_regex_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_regex-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_serialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_serialization-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_system-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_test_exec_monitor_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_test_exec_monitor-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_thread-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_timer_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_timer-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_unit_test_framework_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_unit_test_framework-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_timer_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wave_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wave-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_filesystem_static
LOCAL_STATIC_LIBRARIES += boost_thread_static
LOCAL_STATIC_LIBRARIES += boost_date_time_static
LOCAL_STATIC_LIBRARIES += boost_chrono_static
LOCAL_STATIC_LIBRARIES += boost_system_static
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq (,$(filter x86_64,$(TARGET_ARCH_ABI)))
include $(CLEAR_VARS)
LOCAL_MODULE := boost_wserialization_static
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/lib/libboost_wserialization-clang-mt-x64-1_70.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
ifneq (,$(filter clang%,$(NDK_TOOLCHAIN_VERSION)))
LOCAL_EXPORT_LDLIBS := -latomic
endif
LOCAL_STATIC_LIBRARIES += boost_serialization_static
include $(PREBUILT_STATIC_LIBRARY)
endif
