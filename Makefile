INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AppGrid
AppGrid_FILES = Tweak.x

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += appgridprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
