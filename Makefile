ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = SwipeAway
SwipeAway_FILES = Tweak.xm
SwipeAway_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"
