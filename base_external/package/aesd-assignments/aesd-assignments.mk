
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_ASSIGNMENTS_VERSION = c49b63ae7d56eb5f5fd07ff15932041f3ecdce11
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = https://github.com/GGnando/UltrasonicRangingPlatform
AESD_ASSIGNMENTS_SITE_METHOD = git
# AESD_ASSIGNMENTS_SITE = $(TOPDIR)/../../UltrasonicRangingPlatform

# AESD_ASSIGNMENTS_SITE_METHOD = local
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES
AESD_ASSIGNMENTS_MODULE_SUBDIRS = project
AESD_ASSIGNMENTS_DEPENDENCIES = pigpio

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/servo_daemon all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m755 $(@D)/servo_daemon/servo_daemon  $(TARGET_DIR)/usr/bin/servo_daemon
endef

$(eval $(generic-package))
