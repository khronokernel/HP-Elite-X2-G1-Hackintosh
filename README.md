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

## What's working

* USB/C Hot-plug
* USB-C DP Output
  * HDMI adapters *should* work, too lazy to test
* Mic, speakers and headphones
* CPU Power Management
* HiDPI
* Touchscreen and pen
  * Using the [Wacom Bamboo Ink Pen] (https://www.wacom.com/en-us/products/stylus/bamboo-ink), all Wacom AES based pens should work with the HP Elite X2 G1 and G2


## What's not working

* Battery cycle and temps
* Alps kext unloading
  * Fixed if installed in L/E(sadly)
* VoodooI2C working intermediately
  * Mojave doesn't exhibit this issue, only Catalina
* GPU Firmware
  * Needs ME 12 firmware, which is only found on Z390 and newer

## ACPI


For those curious, I've also provided an ACPI dump of my laptop(BIOS ver. 1.48 Rev.A):
 
* [Firmware Dumps](/ACPI/ACPI-Dumps/)
* [Custom SSDTs](/ACPI/Custom-SSDTs/)


**Required SSDTs**:

| SSDT | ACPI Patches | Comments
| :--- | :--- | :--- |
| SSDT-BAT | [A lot](/ACPI/Custom-SSDTs/battery.plist) | Fixes Battery Readouts |
| SSDT-EC-USBX | N/A | Creates a fake EC and adds USB Power Properties |
| SSDT-HP-FixLidSleep | N/A | Fixes `e005` keyboard spam |
| SSDT-PLUG | N/A | Adds `plugin-type` to `\_PR.CPU0`, allows XCPM to load |
| SSDT-PNLF | N/A | Adds Backlight control support |
| SSDT-PTS | `_PTS` to `XPTS` | Reroutes USB Shutdown calls |
| SSDT-SBUS-MCHC | N/A | Allows AppleSMBus and co to load |
| SSDT-SLPB | N/A | Fixes Sleep button support |
| SSDT-TBHP | N/A | Fixes USB-C Hot-plug |
| SSDT-TPL0 | `PS0`/`PS3` to `XPS0`/`XPS3` | Attempts to fix I2C touchscreen * |

* Need to look into proper `_PS0`/`_PS3` fixes for I2C

For a full list of ACPI patches, see here: [patches.plist](/ACPI/Custom-SSDTs/patches.plist)


**Removing XOSI Renames**:

Thanks to DhiankG, XOSI renames are no longer needed. Instead only needing the following patch:

```
Comment | String |  Enable Touchscreen in macOS
Find    |  Data  |  95 4F 53 59 53 0B DC 07
Replace |  Data  |  95 4F 53 59 53 0B 00 00
```

[Source](https://ptb.discordapp.com/channels/186648463541272576/573338555305295903/713434444861800589)

## Kexts

Hardware specific kexts:

* [VoodooI2C](https://github.com/alexandred/VoodooI2C/)
* [VoodooI2CHID](https://github.com/alexandred/VoodooI2C/)
* [AlpsT4USB](https://github.com/blankmac/AlpsT4USB/releases)
  * A prebuilt for the latest(7faceb9) can be found here: [AlpsT4USB.kext](/Kexts/AlpsT4USB.kext.zip)

## Configuration Specifics

**DeviceProperties**:

* `PciRoot(0x0)/Pci(0x1F,0x3)`
  * `layout-id | Data | 03000000`
* `PciRoot(0x0)/Pci(0x2,0x0)`
  * `APPL,ig-platform-id | Data | 00001E19`
    * Apple uses `03001E19` on lower end MacBooks(M3)
    * M7 failed to boot with is so try either and see whcih works best for you
  
  
**Kernel**:

* Quirks:
  * `AppleCpuPmCfgLock` set to True
  * `AppleCpuPmCfgLock` set to True
  
**PlatformInfo**:

* Generic -> SystemProductName:
  * MacBook9,1
  
## Miscellaneous Faixes

**HiDPI**:

* See here: [HiDPI Fix-up](/HiDPI-Fixup/)

## TO-DO

Current issues:

* I2C Screen sometimes gets into bad state even with XPS0/XPS3 reroutes
  * Need to look into implementing proper power states
  * Reboots between Mojave and catalina fix the issue, not really a fix but works for now
* IOUSBHost crashing in Catalina
  * Intel Bluetooth being trash, waiting for BCM94360NG to arrive
* Alps kext unloads when keyboard cover disconnects(about 2 min after)
  * Loading from macOS doesn't work either
  * Midi's G2 doesn't have this issue, gonna blame G1 + BlackMac not using a G1
* ~~Using RTC ACPI Patch, need to find correct offset to block with [RTCMemoryFixup](https://github.com/acidanthera/RTCMemoryFixup/releases)~~
  * As of BIOS ver.01.45, the region is `DF-E0`
* Look into cycle count and temperature in SSDT-BAT
  * [zprood's cycle count hack](https://github.com/acidanthera/VirtualSMC/blob/master/Docs/Transition%20from%20zprood's%20cycle%20count%20hack.md)

