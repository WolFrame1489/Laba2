$(AS_CPU_PATH)/ashwd.br: \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe"  "$(AS_PROJECT_CONFIG_PATH)/Hardware.hw" -v V1.00.0 -S "4PP065_0571_P74" -o "$(AS_CPU_PATH)/ashwd.br" -T SG4 -B J4.25 -P "$(AS_PROJECT_PATH)" -c "$(AS_CONFIGURATION)" -zip -s 4PP065_0571_P74 -hwd -F 1.6 -secret "$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe"


FORCE:
