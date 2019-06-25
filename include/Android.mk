LOCAL_PATH:= $(call my-dir)
include $(LOCAL_PATH)/../common.mk

include $(CLEAR_VARS)
#TODO move all exported headers to this directory
#LOCAL_MODULE := display_headers
LOCAL_VENDOR_MODULE           := true
LOCAL_COPY_HEADERS_TO         := $(common_header_export_path)
LOCAL_COPY_HEADERS	      := color_metadata.h \
				 ../libqdutils/cb_swap_rect.h \
				 ../libqdutils/cb_utils.h \
				 ../libqdutils/comptype.h \
				 ../libqdutils/display_config.h \
				 ../libqdutils/DisplayConfig.h \
				 ../libqdutils/idle_invalidator.h \
				 ../libqdutils/mdp_version.h \
				 ../libqdutils/profiler.h \
				 ../libqdutils/qdMetaData.h \
				 ../libqdutils/qd_utils.h \
                                 ../libqservice/IQClient.h \
				 ../libqservice/IQService.h \
				 ../libqservice/QService.h \
				 ../libqservice/QServiceUtils.h \
				 ../libcopybit/c2d2.h
include $(BUILD_COPY_HEADERS)
