/*
 * Fixes EC's keyspam on lid wake
 *
 * Source: 
 *   https://github.com/acidanthera/VoodooPS2/blob/master/Docs/ACPI/SSDT-HP-FixLidSleep.dsl
 */
DefinitionBlock ("", "SSDT", 2, "Khrono", "RMKB", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Custom PS2 Map", 
            Package (0x02)
            {
                Package (0x00){}, 
                "e005=0"
            }
        }
    })
}

