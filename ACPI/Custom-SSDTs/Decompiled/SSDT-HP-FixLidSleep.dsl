/*
 * Attempts to fix Keyboad lid sleep/wake
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "RMKB", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (\_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF, Package (0x04)
        {
            "Keyboard", 
            Package (0x06)
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
}

