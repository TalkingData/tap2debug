THEOS_DEVICE_IP=localhost
THEOS_DEVICE_PORT=2222
ARCHS = arm64
TARGET = iPhone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Tap2Debug
Tap2Debug_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
