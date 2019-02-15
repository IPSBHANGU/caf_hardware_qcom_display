ifeq ($(call my-dir),$(call project-path-for,qcom-display))
display-hals := include libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libhdmi libqservice
display-hals += libmemtrack
ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))
endif
