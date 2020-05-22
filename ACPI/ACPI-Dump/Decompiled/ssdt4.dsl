/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI Dumps/Compiled/ssdt4.aml, Thu May 21 19:13:59 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000019A (410)
 *     Revision         0x02
 *     Checksum         0x19
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "Sata0Ide"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20121018 (538054680)
 */
DefinitionBlock ("", "SSDT", 2, "HPQOEM", "Sata0Ide", 0x00001000)
{
    External (_SB_.PCI0.SAT0, DeviceObj)

    Scope (\_SB.PCI0.SAT0)
    {
        Device (PRID)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (PBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateDWordField (PBUF, Zero, PIO0)
                CreateDWordField (PBUF, 0x04, DMA0)
                CreateDWordField (PBUF, 0x08, PIO1)
                CreateDWordField (PBUF, 0x0C, DMA1)
                CreateDWordField (PBUF, 0x10, FLAG)
                PIO0 = 0xF0
                PIO1 = 0xF0
                DMA0 = 0x14
                DMA1 = 0x14
                FLAG = 0x1F
                Return (PBUF) /* \_SB_.PCI0.SAT0.PRID._GTM.PBUF */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (MAST)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (SLAV)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }

        Device (SECD)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_GTM, 0, NotSerialized)  // _GTM: Get Timing Mode
            {
                Name (PBUF, Buffer (0x14)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x00, 0x00, 0x00, 0x00                           // ....
                })
                CreateDWordField (PBUF, Zero, PIO0)
                CreateDWordField (PBUF, 0x04, DMA0)
                CreateDWordField (PBUF, 0x08, PIO1)
                CreateDWordField (PBUF, 0x0C, DMA1)
                CreateDWordField (PBUF, 0x10, FLAG)
                PIO0 = 0xF0
                PIO1 = 0xF0
                DMA0 = 0x14
                DMA1 = 0x14
                FLAG = 0x1F
                Return (PBUF) /* \_SB_.PCI0.SAT0.SECD._GTM.PBUF */
            }

            Method (_STM, 3, NotSerialized)  // _STM: Set Timing Mode
            {
            }

            Device (MAST)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }

            Device (SLAV)
            {
                Name (_ADR, One)  // _ADR: Address
            }
        }
    }
}

