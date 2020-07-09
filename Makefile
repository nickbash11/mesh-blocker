include $(TOPDIR)/rules.mk

PKG_NAME:=mesh-blocker
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/mesh-blocker-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/mesh-blocker
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Scripts for blocking unknown mesh nodes
endef

define Package/mesh-blocker/description
  It is a crutch...
endef

define Build/Compile
endef

define Package/mesh-blocker/install
  $(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,mesh-blocker))

