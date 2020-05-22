# HP Elite X2 G1 Hackintosh

Hardware Specs:

```
CPU:     Intel M7 6Y75
RAM:     8GB 1866MHz LPDDR3
GPU:     HD 515
AUDIO:   CX20724
Touch:   Wacom HID Based Display
```

## ACPI

* [Firmware Dumps](/ACPI/ACPI-Dumps/)
* [Custom SSDTs](/ACPI/Custom-SSDTs)

## Kexts

* VoodooI2C
* VoodooI2CHID
* AlpsT4USB

## Configuration Specifics

**DeviceProperties**:

* `PciRoot(0x0)/Pci(0x1F,0x3)`
  * `alc-layout-id | Data | 03000000`
* `PciRoot(0x0)/Pci(0x2,0x0)`
  * `APPL,ig-platform-id | Data | 00001E19`
  
  
**Kernel**:

* Quirks:
  * `AppleCpuPmCfgLock` set to True
  * `AppleCpuPmCfgLock` set to True

**Misc**:

* `BlessOverride`:
  * `\EFI\Microsoft\Boot\bootmgrfw.efi`
  
**PlatformInfo**:

* Generic -> SystemProductName:
  * MacBook9,1
