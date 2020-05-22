/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom SSDTs/Compiled/SSDT-XOSI.aml, Thu May 21 19:26:52 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000013C (316)
 *     Revision         0x02
 *     Checksum         0x8F
 *     OEM ID           "hack"
 *     OEM Table ID     "_XOSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_XOSI", 0x00000000)
{
    Method (XOSI, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Local0 = Package (0x0F)
                {
                    "Processor Aggregator Device", 
                    "Windows", 
                    "Windows 2001", 
                    "Windows 2001 SP2", 
                    "Windows 2006", 
                    "Windows 2006 SP1", 
                    "Windows 2006.1", 
                    "Windows 2009", 
                    "Windows 2012", 
                    "Windows 2013", 
                    "Windows 2015", 
                    "Windows 2016", 
                    "Windows 2017", 
                    "Windows 2017.2", 
                    "Windows 2018"
                }
            Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}

