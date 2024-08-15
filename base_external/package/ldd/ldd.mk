
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 6a5493246b8e9d677e335dbd88254b0ba07170f6
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-kingfaicl
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))
