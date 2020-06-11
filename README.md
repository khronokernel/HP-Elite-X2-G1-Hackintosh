# HP Elite X2 1012 G1 Hackintosh

**Note**: This is not a guide, merely an aid as to what this model requires. For a full guide, see here: [OpenCore Laptop Guide](https://dortania.github.io/vanilla-laptop-guide/)

![](/images/about-this-mac.png)

Hardware Specs:

```
MODEL    HP Elite X2 1012 G1
CPU:     Intel M7 6Y75
RAM:     8GB 1866MHz LPDDR3
GPU:     HD 515
AUDIO:   Conexant CX20724
Touch:   Wacom HID Based Display(WCOM4814)
WIFI:    Fenvi BCM94360NG
```

## What's working

* macOS Mojave 10.14.6 and Catalina 10.15.5
* USB/C Hot-plug
* USB-C DP/HDMI Output
* Mic, speakers and headphones
* CPU Power Management
* Trackpad gestures 
* HiDPI
* Bluetooth and Wifi
  * Card was swapped to BCM94360NG for better support
  * Intel 8260 can use the following:
    * [itlwm](https://github.com/zxystd/itlwm)
	* [IntelBluetoothFirmware](https://github.com/zxystd/IntelBluetoothFirmware)(Note sleep breaks with this)
* Touchscreen and pen
  * Using the [Wacom Bamboo Ink Pen](https://www.wacom.com/en-us/products/stylus/bamboo-ink), all Wacom AES based pens should work with the HP Elite X2 G1 and G2
* Battery readouts
  * Includes cycle count
* Front webcam

## What's not working

* Battery temperature 
  * This would require either sending a PR or creating a new plugin to read `_BIF` readouts including those not in the ACPI spec
* VoodooI2C working intermediately
  * Related to ACPI power states
  * Reboots between OSes fixes this
* GPU Based DRM
  * No iGPU has working DRM
  * Chrome plays Netflix just fine
* Micro SD card reader
  * The G1's Intel based so no drivers, unsure what the G2 runs
* Rear webcam
  * Rear camera's I2C based
  * Also why are you taking photos with a 12" tablet

## Untested

* Thunderbolt
  * Personally don't own any Thunderbolt devices so can't test
  * Cold booting the device with [ThunderboltReset](https://github.com/osy86/ThunderboltReset) and [ThunderboltPkg](https://github.com/al3xtjames/ThunderboltPkg) should work
* Hibernation
  * Requires RTC blacklisting, currently on [TO-DO List](#to-do)
* Pen pressure and tilt in macOS Sierra and newer
  * See here for potential fix: [VoodooI2CTouchscreenIOManager](https://www.tonymacx86.com/threads/guide-hp-elite-x2-1012-g1-g2-clover-uefi-virtualsmc-hot-patch.276500/post-2135378)
* Smartcard reader
  * Don't own or work with smartcards
* WWAN Card
  * Personally don't own any WWAN hardware so can't test

## ACPI

For those curious, I've also provided an ACPI dump of my laptop(BIOS ver. 1.48 Rev.A):
 
* [Firmware Dumps](/ACPI/ACPI-Dumps/)
* [Custom SSDTs](/ACPI/Custom-SSDTs/)


**Required SSDTs**:

| SSDT | ACPI Patches | Comments
| :--- | :--- | :--- |
| SSDT-BAT | [A lot](/ACPI/Custom-SSDTs/battery.plist) | Fixes Battery Readouts |
| SSDT-EC-USBX | N/A | Creates a fake EC and adds USB Power Properties |
| SSDT-GPRW | `GPRW` to `XPRW` | Fix random XDCI spams |
| SSDT-HP-FixLidSleep | N/A | Fixes `e005` keyboard spam |
| SSDT-PLUG | N/A | Adds `plugin-type` to `\_PR.CPU0`, allows XCPM to load |
| SSDT-PNLF | N/A | Adds Backlight control support |
| SSDT-PTS | `_PTS` to `XPTS` | Reroutes USB Shutdown calls |
| SSDT-SBUS-MCHC | N/A | Allows AppleSMBus and co to load |
| SSDT-SLPB | N/A | Fixes Sleep button support |
| SSDT-TBHP | `_RMV` to `XRMV` | Fixes USB-C Hot-plug |
| SSDT-TPL0 | `PS0`/`PS3` to `XPS0`/`XPS3` | Attempts to fix I2C touchscreen * |

* Need to look into proper `_PS0`/`_PS3` fixes for I2C

For a full list of ACPI patches, see here: [patches.plist](/ACPI/Custom-SSDTs/patches.plist)


**Removing XOSI Renames**:

Thanks to [DhinakG](https://github.com/dhinakg), XOSI renames are no longer needed. Instead only needing the following patch:

```
Comment | String |  Enable Touchscreen in macOS
Find    |  Data  |  95 4F 53 59 53 0B DC 07
Replace |  Data  |  95 4F 53 59 53 0B 00 00
```

## Kexts

Hardware specific kexts:

* [VoodooI2C](https://github.com/alexandred/VoodooI2C/)
* [VoodooI2CHID](https://github.com/alexandred/VoodooI2C/)
* [AlpsT4USB](https://github.com/blankmac/AlpsT4USB/releases)
  * A prebuilt for the latest([7faceb9](https://github.com/blankmac/AlpsT4USB/commit/7faceb9740b82e250398552e64f39c52bf3f5977)) can be found here: [AlpsT4USB.kext](/Kexts/AlpsT4USB.kext.zip)

## Configuration Specifics

**DeviceProperties**:

* `PciRoot(0x0)/Pci(0x1F,0x3)`
  * `layout-id | Data | 03000000`
* `PciRoot(0x0)/Pci(0x2,0x0)`
  * `APPL,ig-platform-id | Data | 00001E19`
    * Apple uses `03001E19` on lower end MacBooks(M3)
    * M7 failed to boot with this so try either and see which works best for you
  
  
**Kernel**:

* Quirks:
  * `AppleCpuPmCfgLock` set to True
 
  
**PlatformInfo**:

* Generic -> SystemProductName:
  * MacBook9,1
  
## Miscellaneous Faixes

### Battery Status

Grab [CoconutBattery](https://www.coconut-flavour.com/coconutbattery/), and set the format:

```
%ww %r
```

The above will show both wattage and time remaining

### HiDPI

See here: [HiDPI Fix-up](/HiDPI-Fixup/)

## TO-DO

**High Priority:**

* I2C Screen sometimes gets into bad state even with XPS0/XPS3 reroutes
  * Need to look into implementing proper power states
  * Reboots between Mojave and Catalina fix the issue, not really a fix but works for now
* Using RTC ACPI Patch, need to find correct offset to block with [RTCMemoryFixup](https://github.com/acidanthera/RTCMemoryFixup/releases)
  * As of BIOS ver.01.45, the main region is `DF-E0`
  * Wake from deep sleep will cause a restart with RTC error, likely multiple regions need to be fixed
* Fix 3 key modifier(ie. Cmd + Shift + 4 won't register)

**Low Priority:**

* Look into temperature monitoring in SSDT-BAT
  * Neither `_BIF` nor `_BIX` support battery temperature, and so VirtualSMC has no standard way of [reading battery temps.](https://github.com/acidanthera/VirtualSMC/blob/master/Sensors/SMCBatteryManager/SMCSMBusController.cpp#L218L219) 
  * Add vSMC plugin for battery temperature
* Add info on XOSI alternative
* Install El Capitan 10.11 and test pen pressure
