# HP Elite X2 G1 Hackintosh

**THIS REPO IS STILL WORK IN PROGRESS**

Hardware Specs:

```
CPU:     Intel M7 6Y75
RAM:     8GB 1866MHz LPDDR3
GPU:     HD 515
AUDIO:   CX20724
Touch:   Wacom HID Based Display(WCOM4814)
```

## ACPI


For those curious, I've also provided an ACPI dump of my laptop(BIOS ver. 1.48 Rev.A)
* [Firmware Dumps](/ACPI/ACPI-Dumps/)
* [Custom SSDTs](/ACPI/Custom-SSDTs/)


**Required SSDTs**:

| SSDT | ACPI Patches | Comments
| :--- | :--- | :--- |
| SSDT-BAT | [A lot](/ACPI/Custom-SSDTs/battery.plist) | Fixes Battery Readouts |
| SSDT-EC-USBX | N/A | Creates a fake EC and adds USB Power Properties |
| SSDT-HP-FixLidSleep | N/A | Fixes sleep with keyboard lid |
| SSDT-PLUG | N/A | Adds `plugin-type` to `\_PR.CPU0`, allows XCPM to load |
| SSDT-PNLF | N/A | Adds Backlight control support |
| SSDT-PTS | `_PTS` to `XPTS` | Fixes USB Shutdown calls |
| SSDT-SBUS-MCHC | N/A | Allows AppleSMBus to load |
| SSDT-SLPB | N/A | Fixes Sleep button support(maybe? Doesn't work for me) |
| SSDT-TBHP | N/A | Fixes USB-C Hot-plug |
| SSDT-TPL0 | `PS0`/`PS3` to `XPS0`/`XPS3` | Attempts to fix I2C touchscreen |

For a full list of ACPI patches, see here: [patches.plist](/ACPI/Custom-SSDTs/patches.plist)


**Removing XOSI Renames**:

Thanks to DhiankG, XOSI renames are no longer needed. Instead only needing the following patch:

```
Comment:
	Enable Touchscreen in macOS
Find:
	95 4F 53 59 53 0B DC 07
Replace:
	95 4F 53 59 53 0B 00 00
```

[Source](https://ptb.discordapp.com/channels/186648463541272576/573338555305295903/713434444861800589)

## Kexts

Hardware specific kexts:

* [VoodooI2C](https://github.com/alexandred/VoodooI2C/)
* [VoodooI2CHID](https://github.com/alexandred/VoodooI2C/)
* [AlpsT4USB](https://github.com/blankmac/AlpsT4USB/releases)

## Configuration Specifics

**DeviceProperties**:

* `PciRoot(0x0)/Pci(0x1F,0x3)`
  * `alc-layout-id | Data | 03000000`
* `PciRoot(0x0)/Pci(0x2,0x0)`
  * `APPL,ig-platform-id | Data | 00001E19`
    * (Apple uses `03001E19` on lower end MacBooks(M3))
  
  
**Kernel**:

* Quirks:
  * `AppleCpuPmCfgLock` set to True
  * `AppleCpuPmCfgLock` set to True

**Misc**:

* `BlessOverride`:
  * `\EFI\Microsoft\Boot\bootmgrfw.efi`
    * (Needed for when dual boting Windows via OC)
  
**PlatformInfo**:

* Generic -> SystemProductName:
  * MacBook9,1
  
## Miscellaneous Faixes

Mainly quality of life improvements.

**HiDPI**:

* See here: [HiDPI Fix-up](/HiDPI-Fixup/)

## TO-DO

Current issues:

* I2C Screen sometimes gets into bad state even with XPS0/XPS3 reroutes
  * Need to look into implementing proper power states
* IOUSBHost crashing in Catalina
  * Gonna blame Intel Bluetooth, waiting for BCM94360NG to arrive
* Newer Alps kext refuses to prelink, older doesn't support gestures 
* Using RTC ACPI Patch, need to find correct offset to block with [RTCMemoryFixup](https://github.com/acidanthera/RTCMemoryFixup/releases)
* Pulls 4.8w at Idle by default, 8w on average. 
  * Would like to improve battery life a bit more with [CPUFriend](https://github.com/acidanthera/CPUFriend/releases)
* Look into cycle count in SSDT-BAT
  * [zprood's cycle count hack](https://github.com/acidanthera/VirtualSMC/blob/master/Docs/Transition%20from%20zprood's%20cycle%20count%20hack.md)
* Add credit to SSDTs:
  * [midi1996](https://github.com/midi1996)
  * [BlackMac](https://github.com/blankmac)

