/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom-SSDTs/Compiled/SSDT-TBHP.aml, Fri May 22 19:00:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000096 (150)
 *     Revision         0x02
 *     Checksum         0x94
 *     OEM ID           "TBHP"
 *     OEM Table ID     "hotplg"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "TBHP", "hotplg", 0x00000000)
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

