##############################################################
#
# 			CHAR-DEVICE-DRIVER
#
##############################################################

# Fill up the contents below in order to reference your assignment 3 git contents
CHAR_DEVICE_DRIVER_VERSION = 'ae02524f09c17b91f03876f3b4b7978758c18cc6'
CHAR_DEVICE_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-ajsanthosh14.git'
CHAR_DEVICE_DRIVER_SITE_METHOD = git
CHAR_DEVICE_DRIVER_GIT_SUBMODULES = YES

CHAR_DEVICE_DRIVER_MODULE_SUBDIRS = aesd-char-driver
CHAR_DEVICE_DRIVER_MODULE_MAKE_OPTS = KVERSION=$(LINUX_VERSION_PROBED)

# Added your writer, finder and finder-test utilities/scripts to the installation steps below
# Added aesdsocket bin and system v script
define CHAR_DEVICE_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))





