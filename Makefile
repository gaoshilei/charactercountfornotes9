THEOS_DEVICE_IP = 192.168.0.115
include $(THEOS)/makefiles/common.mk
ARCHS = armv7 arm64
TWEAK_NAME = CharacterCountForNotes9
CharacterCountForNotes9_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobileNotes"
