##############################################################
#
# LDD
#
##############################################################

# Reference: https://buildroot.org/downloads/manual/manual.html#_infrastructure_for_packages_building_kernel_modules


# Reference to assignment 7 git contents
LDD_VERSION = '8c909d0a0c5e89ee79446cd3bd3ef5cc7ea7f080'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-ajsanthosh14.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES


# Subdirectories
LDD_MODULE_SUBDIRS = misc-modules 
LDD_MODULE_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
        $(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))

