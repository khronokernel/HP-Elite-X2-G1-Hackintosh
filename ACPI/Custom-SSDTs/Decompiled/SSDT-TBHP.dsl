/*
 * Fixes USB-C Hotplug support
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "hotplg", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (TARS, FieldUnitObj)

    Scope (_SB.PCI0.RP01.PXSX)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            If (_OSI ("Darwin"))
            {
                Return (One)
            }
            Else
            {
                Return (TARS) /* External reference */
            }
        }
    }
}

