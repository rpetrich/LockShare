TWEAK_NAME = LockShare
LockShare_FILES = Tweak.x
LockShare_PRIVATE_FRAMEWORKS = PhotosUI PhotoLibrary

ADDITIONAL_CFLAGS = -std=c99

IPHONE_ARCHS = armv7 arm64
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 5.0

include framework/makefiles/common.mk
include framework/makefiles/tweak.mk
