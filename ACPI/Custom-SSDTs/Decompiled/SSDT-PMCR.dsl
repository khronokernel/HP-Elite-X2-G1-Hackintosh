/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom SSDTs/Compiled/SSDT-PMCR.aml, Thu May 21 19:26:52 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004F (79)
 *     Revision         0x02
 *     Checksum         0x7E
 *     OEM ID           "hack"
 *     OEM Table ID     "PMCR"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PMCR", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (PMCR)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }
    }
}

