LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
#LOCAL_CFLAGS += -fPIE
#LOCAL_LDFLAGS += -fPIE -pie
LOCAL_DISABLE_FATAL_LINKER_WARNINGS := true
LOCAL_MODULE    := ceserver
LOCAL_SRC_FILES := api.c ceserver.c porthelp.c symbols.c threads.c context.c ceservertest.c extensionfunctions.c extensionloader.c
LOCAL_LDLIBS := -llog  -lz

include $(BUILD_SHARED_LIBRARY)
