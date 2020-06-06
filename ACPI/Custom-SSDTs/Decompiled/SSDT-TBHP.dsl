/*
 * Fixes USB-C Hotplug support
 *
 * Source:
 *   https://github.com/midi1996/X2G2-opencore-hackintosh/blob/master/files/ACPI/SSDT-TBHP.aml
 *
 * Required patches:
 *   _RMV to XRMV rename 
 */
DefinitionBlock ("", "SSDT", 2, "Khrono", "hotplg", 0x00000000)
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

