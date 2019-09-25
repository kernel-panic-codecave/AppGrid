include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = appgridprefs

appgridprefs_FILES = ASGRootListController.m
appgridprefs_INSTALL_PATH = /Library/PreferenceBundles
appgridprefs_FRAMEWORKS = UIKit
appgridprefs_PRIVATE_FRAMEWORKS = Preferences
appgridprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/appgridprefs.plist$(ECHO_END)
