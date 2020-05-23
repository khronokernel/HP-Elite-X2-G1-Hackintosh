/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom-SSDTs/Compiled/SSDT-NULL.aml, Fri May 22 19:00:30 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D4 (212)
 *     Revision         0x02
 *     Checksum         0xF3
 *     OEM ID           "RehabM"
 *     OEM Table ID     "RMNE"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "RehabM", "RMNE", 0x00001000)
{
    Device (RMNE)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, "NULE0000")  // _HID: Hardware ID
        Name (MAC, Buffer (0x06)
        {
             0x11, 0x22, 0x33, 0x44, 0x55, 0x66               // ."3DUf
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0A)
            {
                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }, 

                "IOName", 
                "ethernet", 
                "name", 
                Buffer (0x09)
                {
                    "ethernet"
                }, 

                "model", 
                Buffer (0x15)
                {
                    "RM-NullEthernet-1001"
                }, 

                "device_type", 
                Buffer (0x09)
                {
                    "ethernet"
                }
            })
        }
    }
}

