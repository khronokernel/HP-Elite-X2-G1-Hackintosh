/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom SSDTs/Compiled/SSDT-XHC.aml, Thu May 21 19:26:52 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000015E (350)
 *     Revision         0x02
 *     Checksum         0x84
 *     OEM ID           "hack"
 *     OEM Table ID     "_XHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_XHC", 0x00000000)
{
    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Local0 = Package (0x0E)
            {
                "RM,disable_FakePCIID", 
                Zero, 
                "subsystem-id", 
                Buffer (0x04)
                {
                     0x70, 0x72, 0x00, 0x00                           // pr..
                }, 

                "subsystem-vendor-id", 
                Buffer (0x04)
                {
                     0x86, 0x80, 0x00, 0x00                           // ....
                }, 

                "AAPL,current-available", 
                Buffer (0x04)
                {
                     0x34, 0x08, 0x00, 0x00                           // 4...
                }, 

                "AAPL,current-extra", 
                Buffer (0x04)
                {
                     0x98, 0x08, 0x00, 0x00                           // ....
                }, 

                "AAPL,current-extra-in-sleep", 
                Buffer (0x04)
                {
                     0x40, 0x06, 0x00, 0x00                           // @...
                }, 

                "AAPL,max-port-current-in-sleep", 
                Buffer (0x04)
                {
                     0x34, 0x08, 0x00, 0x00                           // 4...
                }
            }
        If (((CondRefOf (\_SB.PCI0.RMD2) || CondRefOf (\_SB.PCI0.RMD3)) || CondRefOf (\_SB.PCI0.RMD4)))
        {
            Local0 [One] = One
        }

        Return (Local0)
    }
}

