/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI Dumps/Compiled/ssdt9.aml, Thu May 21 19:13:59 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000260 (608)
 *     Revision         0x02
 *     Checksum         0x5E
 *     OEM ID           "HP    "
 *     OEM Table ID     "PwrCtlEv"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20121018 (538054680)
 */
DefinitionBlock ("", "SSDT", 2, "HP    ", "PwrCtlEv", 0x00000001)
{
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.PSSB, IntObj)
    External (_SB_.WMIV.GVWE, UnknownObj)
    External (ECRG, IntObj)

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        OperationRegion (HPSF, SystemMemory, 0x85E6B000, 0x00000003)
        Field (HPSF, AnyAcc, Lock, Preserve)
        {
            PSCF,   8, 
            BCIF,   8, 
            BCSC,   8
        }

        Name (PSSS, Zero)
        Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = (PSSS & One)
                Local1 = (\_SB.PCI0.LPCB.EC0.PSSB & One)
                Local2 = (PSSS & 0x02)
                Local3 = (\_SB.PCI0.LPCB.EC0.PSSB & 0x02)
                Local4 = (PSSS & 0x10)
                Local5 = (\_SB.PCI0.LPCB.EC0.PSSB & 0x10)
                If (((Local0 != Local1) && (Local0 == Zero)))
                {
                    \_SB.WMIV.GVWE (0x0F, Zero)
                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
                ElseIf (((Local4 != Local5) && (Local4 == Zero)))
                {
                    \_SB.WMIV.GVWE (0x0F, 0x03)
                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
                ElseIf (((Local0 != Local1) && (Local0 == One)))
                {
                    \_SB.WMIV.GVWE (0x0F, One)
                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
                ElseIf (((Local2 != Local3) && (Local2 == 0x02)))
                {
                    If (!BCIF)
                    {
                        \_SB.WMIV.GVWE (0x10, Zero)
                    }

                    BCIF = Zero
                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
                ElseIf (((Local2 != Local3) && (Local2 == Zero)))
                {
                    If (!BCIF)
                    {
                        \_SB.WMIV.GVWE (0x10, One)
                    }

                    BCIF = Zero
                    PSSS = \_SB.PCI0.LPCB.EC0.PSSB /* External reference */
                }
            }

            Release (\_SB.PCI0.LPCB.EC0.ECMX)
        }
    }
}

