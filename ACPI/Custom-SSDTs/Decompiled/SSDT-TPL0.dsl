/*
 * Attempts to fix I2C touchscreen state
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "_I2C", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPL0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPL0.XPS0, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C0.TPL0.XPS3, MethodObj)    // 0 Arguments

    Scope (_SB.PCI0.I2C0.TPL0)
    {
        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
            If (_OSI ("Darwin")){}
            Else
            {
                \_SB.PCI0.I2C0.TPL0.XPS0 ()
            }
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
            If (_OSI ("Darwin")){}
            Else
            {
                \_SB.PCI0.I2C0.TPL0.XPS3 ()
            }
        }
    }
}

