Package/r8152-firmware = $(call Package/firmware-default,RealTek RTL8152 firmware)
define Package/r8152-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_nic
	$(CP) \
		$(PKG_BUILD_DIR)/rtl_nic/rtl8153* \
		$(PKG_BUILD_DIR)/rtl_nic/rtl8156* \
		$(1)/lib/firmware/rtl_nic
endef
$(eval $(call BuildPackage,r8152-firmware))

Package/r8169-firmware = $(call Package/firmware-default,RealTek RTL8169 firmware)
define Package/r8169-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_nic
	$(CP) \
		$(PKG_BUILD_DIR)/rtl_nic/rtl810* \
		$(PKG_BUILD_DIR)/rtl_nic/rtl8125* \
		$(PKG_BUILD_DIR)/rtl_nic/rtl8168* \
		$(PKG_BUILD_DIR)/rtl_nic/rtl84* \
		$(1)/lib/firmware/rtl_nic
endef
$(eval $(call BuildPackage,r8169-firmware))

Package/rtl8188eu-firmware = $(call Package/firmware-default,RealTek RTL8188EU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8188eu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(CP) \
		$(PKG_BUILD_DIR)/rtlwifi/rtl8188eufw.bin \
		$(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8188eu-firmware))

Package/rtl8188fu-firmware = $(call Package/firmware-default,RealTek RTL8188FU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8188fu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(CP) \
		$(PKG_BUILD_DIR)/rtlwifi/rtl8188fufw.bin \
		$(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8188fu-firmware))

Package/rtl8192ce-firmware = $(call Package/firmware-default,RealTek RTL8192CE firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8192ce-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cfw.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cfwU.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cfwU_B.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8192ce-firmware))

Package/rtl8192cu-firmware = $(call Package/firmware-default,RealTek RTL8192CU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8192cu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cufw.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cufw_A.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cufw_B.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192cufw_TMSC.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8192cu-firmware))

Package/rtl8192de-firmware = $(call Package/firmware-default,RealTek RTL8192DE firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8192de-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192defw.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8192de-firmware))

Package/rtl8192eu-firmware = $(call Package/firmware-default,RealTek RTL8192EU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8192eu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192eu_nic.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8192eu-firmware))

Package/rtl8192se-firmware = $(call Package/firmware-default,RealTek RTL8192SE firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8192se-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8192sefw.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8192se-firmware))

Package/rtl8723au-firmware = $(call Package/firmware-default,RealTek RTL8723AU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8723au-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723aufw_A.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723aufw_B.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723aufw_B_NoBT.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8723au-firmware))

Package/rtl8723be-firmware = $(call Package/firmware-default,RealTek RTL8723BE firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8723be-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723befw_36.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723befw.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8723be-firmware))

Package/rtl8723bu-firmware = $(call Package/firmware-default,RealTek RTL8723BU firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8723bu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8723bu_nic.bin $(1)/lib/firmware/rtlwifi
	ln -s rtl8723bu_nic.bin $(1)/lib/firmware/rtlwifi/rtl8723bs_nic.bin
endef
$(eval $(call BuildPackage,rtl8723bu-firmware))

Package/rtl8761a-firmware = $(call Package/firmware-default,RealTek RTL8761A firmware)
define Package/rtl8761a-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtl_bt/rtl8761a_fw.bin $(1)/lib/firmware/rtl_bt
endef
$(eval $(call BuildPackage,rtl8761a-firmware))

Package/rtl8761b-firmware = $(call Package/firmware-default,RealTek RTL8761B firmware)
define Package/rtl8761b-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtl_bt/rtl8761b_config.bin $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtl_bt/rtl8761b_fw.bin $(1)/lib/firmware/rtl_bt
endef
$(eval $(call BuildPackage,rtl8761b-firmware))

Package/rtl8761bu-firmware = $(call Package/firmware-default,RealTek RTL8761BU firmware)
define Package/rtl8761bu-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtl_bt/rtl8761bu_config.bin $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtl_bt/rtl8761bu_fw.bin $(1)/lib/firmware/rtl_bt
endef
$(eval $(call BuildPackage,rtl8761bu-firmware))

Package/rtl8821ae-firmware = $(call Package/firmware-default,RealTek RTL8821AE firmware,,LICENCE.rtlwifi_firmware.txt)
define Package/rtl8821ae-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8821aefw_29.bin $(1)/lib/firmware/rtlwifi
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rtlwifi/rtl8821aefw_wowlan.bin $(1)/lib/firmware/rtlwifi
endef
$(eval $(call BuildPackage,rtl8821ae-firmware))
