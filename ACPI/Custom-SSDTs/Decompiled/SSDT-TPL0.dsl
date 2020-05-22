/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom SSDTs/Compiled/SSDT-TPL0.aml, Thu May 21 19:26:52 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000E3 (227)
 *     Revision         0x02
 *     Checksum         0x5E
 *     OEM ID           "hack"
 *     OEM Table ID     "PMCR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PMCR", 0x00000000)
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

