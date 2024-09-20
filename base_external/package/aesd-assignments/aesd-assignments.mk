
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#AESD_ASSIGNMENTS_VERSION = dbc4d9a678fa3639e0e0b4896f9d68be736c9073 
#AESD_ASSIGNMENTS_VERSION = 18b0c71bfaa9fc56e86c3ba8ad032032c6295084 
#AESD_ASSIGNMENTS_VERSION = 3f06172f136662dfd4fbb0c9d8f697710caeab4c 
#AESD_ASSIGNMENTS_VERSION = 9a7541b91e0d111c2ea569c0cfa3e7af9dcdd19e 
#AESD_ASSIGNMENTS_VERSION = b47520ee894f6cecb97cfadfbab61a13e5b73cd5 
#AESD_ASSIGNMENTS_VERSION = de14106b959e332eb1bd607e4c8e6796512525a4 
#AESD_ASSIGNMENTS_VERSION = 607417c0789346b2f9f6e77b15e65719b633952d 
#AESD_ASSIGNMENTS_VERSION = a2164c4ce45d5b57ea807a4fe94fdbf4a7a2a043 
#AESD_ASSIGNMENTS_VERSION = 79afa2273b608d46a562763862ba358981e0da36 
#AESD_ASSIGNMENTS_VERSION = 295b2f745cc5aa702375e0200fa7ffa5a7bb8b91 
#AESD_ASSIGNMENTS_VERSION = 91bca3db74e9662b86684dea68dd01369b7c16aa
#AESD_ASSIGNMENTS_VERSION = 92175ca57682e102236a37166ac8861baaa11c3e
#AESD_ASSIGNMENTS_VERSION = 1cb99708a1a49cbfb9dc6c8d4c6450f97a8707aa
#AESD_ASSIGNMENTS_VERSION = 20f0604ce6e61dca3324f8b13e398192a1d5c554
#AESD_ASSIGNMENTS_VERSION = 83ae7d3de4e298bf8764f853c8c1eb6206db4fb4
#AESD_ASSIGNMENTS_VERSION = 4831f9bb2690410fd09e30ec1a4dccd00adfa2d9
#AESD_ASSIGNMENTS_VERSION = 2e760ed8094cd4bbb471da012b5da0edca8a8ed1
#AESD_ASSIGNMENTS_VERSION = 8d87325443a14733b1d440fb20be00f8456b72b8
#AESD_ASSIGNMENTS_VERSION = 72d143ec7a8656d4247c7daa6e272e2883c4b542
#AESD_ASSIGNMENTS_VERSION = c7d91d953f619f7d28b5a0bf4d252dd6c329e7eb
#AESD_ASSIGNMENTS_VERSION = e60002524227c040ffaf51b456bd5fc93750810f
AESD_ASSIGNMENTS_VERSION = 6ab36f1b7c8c549f5ad62733e641ff4286cf657e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-kingfaicl
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES
AESD_ASSIGNMENTS_MODULE_SUBDIRS = aesd-char-driver

$(eval $(kernel-module))

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket 
endef

$(eval $(generic-package))
