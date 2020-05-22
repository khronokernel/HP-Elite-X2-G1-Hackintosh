/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI/Custom SSDTs/Compiled/SSDT-BAT.aml, Thu May 21 19:26:52 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000015AE (5550)
 *     Revision         0x02
 *     Checksum         0xEC
 *     OEM ID           "hack"
 *     OEM Table ID     "BATTERY"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "BATTERY", 0x00000000)
{
    External (_SB_.NBST, PkgObj)
    External (_SB_.NBTI, PkgObj)
    External (_SB_.NDBS, PkgObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.BATN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BRCC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BRCV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BSEL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BST_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BSTA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BTDR, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.BTMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.GACS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GBMF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GBSS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GCTL, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GDCH, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.GDNM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.IDIS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.INAC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.INCH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LB1_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LB2_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.NDCB, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NGBF, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NGBT, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLB1, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLB2, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.NLO2, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.PSSB, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.TEMP, FieldUnitObj)
    External (BATN, IntObj)
    External (BATP, FieldUnitObj)
    External (BRCC, IntObj)
    External (BRCV, IntObj)
    External (BSEL, UnknownObj)
    External (BST_, IntObj)
    External (BSTA, UnknownObj)
    External (BTMX, UnknownObj)
    External (ECMX, UnknownObj)
    External (ECRG, IntObj)
    External (GACS, UnknownObj)
    External (GBMF, IntObj)
    External (GBSS, IntObj)
    External (GCTL, IntObj)
    External (GDCH, IntObj)
    External (GDNM, IntObj)
    External (IDIS, UnknownObj)
    External (INAC, UnknownObj)
    External (INCH, UnknownObj)
    External (LB1_, UnknownObj)
    External (LB2_, UnknownObj)
    External (NBST, UnknownObj)
    External (NDBS, IntObj)
    External (NDCB, UnknownObj)
    External (NGBF, IntObj)
    External (NGBT, IntObj)
    External (NLB1, UnknownObj)
    External (NLB2, UnknownObj)
    External (NLO2, UnknownObj)
    External (PSSB, UnknownObj)

    Scope (_SB.PCI0.LPCB.EC0)
    {
        OperationRegion (ERM2, EmbeddedControl, Zero, 0xFF)
        Field (ERM2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x89), 
            DC00,   8, 
            DC01,   8, 
            Offset (0x8D), 
            FC00,   8, 
            FC01,   8, 
            TE00,   8, 
            TE01,   8, 
            Offset (0x92), 
            ME00,   8, 
            ME01,   8, 
            Offset (0x95), 
            DV00,   8, 
            DV01,   8, 
            CA00,   8, 
            CA01,   8, 
            Offset (0x9B), 
            BE00,   8, 
            BE01,   8, 
            PR00,   8, 
            PR01,   8, 
            CR00,   8, 
            CR01,   8, 
            RC00,   8, 
            RC01,   8, 
            CC00,   8, 
            CC01,   8, 
            PV00,   8, 
            PV01,   8, 
            CB00,   8, 
            CB01,   8, 
            CD00,   8, 
            CD01,   8, 
            CE00,   8, 
            CE01,   8, 
            Offset (0xAF), 
            TF00,   8, 
            TF01,   8, 
            Offset (0xB3), 
            XC00,   8, 
            XC01,   8, 
            Offset (0xBA), 
            TS00,   8, 
            TS01,   8, 
            Offset (0xC9), 
            SN00,   8, 
            SN01,   8, 
            AT00,   8, 
            AT01,   8, 
            Offset (0xE1), 
            BT00,   8, 
            BT01,   8, 
            Offset (0xF9), 
            CP00,   8, 
            CP01,   8
        }

        Method (B1B2, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }

        Method (\_SB.PCI0.LPCB.EC0.GACW, 0, NotSerialized)
        {
            Local0 = Zero
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = B1B2 (CP00, CP01)
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (\_SB.PCI0.LPCB.EC0.GBAW, 0, NotSerialized)
        {
            Local0 = Zero
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local1 = B1B2 (DV00, DV01)
                Local2 = B1B2 (DC00, DC01)
                Local0 = (Local1 * Local2)
                Divide (Local0, 0x000F4240, Local3, Local0)
                If ((Local3 >= 0x0007A120))
                {
                    Local0++
                }
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (\_SB.PCI0.LPCB.EC0.BTIF, 1, Serialized)
        {
            Local7 = (One << Arg0)
            BTDR (One)
            If ((BSTA (Local7) == 0x0F))
            {
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            Local0 = NGBF /* External reference */
            Release (BTMX)
            If (((Local0 & Local7) == Zero))
            {
                Return (Zero)
            }

            NBST [Arg0] = NDBS /* External reference */
            Acquire (BTMX, 0xFFFF)
            NGBT |= Local7
            Release (BTMX)
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                BSEL = Arg0
                Local0 = B1B2 (FC00, FC01)
                DerefOf (NBTI [Arg0]) [One] = Local0
                DerefOf (NBTI [Arg0]) [0x02] = Local0
                DerefOf (NBTI [Arg0]) [0x04] = B1B2 (DV00, DV01)
                Local0 = (B1B2 (FC00, FC01) * NLB1) /* External reference */
                Divide (Local0, 0x64, Local3, Local4)
                DerefOf (NBTI [Arg0]) [0x05] = Local4
                Local0 = (B1B2 (FC00, FC01) * NLO2) /* External reference */
                Divide (Local0, 0x64, Local3, Local4)
                DerefOf (NBTI [Arg0]) [0x06] = Local4
                Local0 = B1B2 (SN00, SN01)
                Local1 = B1B2 (AT00, AT01)
                DerefOf (NBTI [Arg0]) [0x0D] = B1B2 (CC00, CC01)
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC0.CRZN = 0x05
                Local2 = \_SB.PCI0.LPCB.EC0.TEMP /* External reference */
                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                Local2 = ((Local2 * 0x0A) + 0x0AAC)
                DerefOf (NBTI [Arg0]) [0x0E] = Local2
            }

            Release (ECMX)
            Local2 = GBSS (Local0, Local1)
            DerefOf (NBTI [Arg0]) [0x0A] = Local2
            Acquire (BTMX, 0xFFFF)
            NGBF &= ~Local7
            Release (BTMX)
            Return (Zero)
        }

        Method (\_SB.PCI0.LPCB.EC0.BTST, 2, Serialized)
        {
            Local7 = (One << Arg0)
            BTDR (One)
            If ((BSTA (Local7) == 0x0F))
            {
                NBST [Arg0] = Package (0x04)
                    {
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    }
                Return (0xFF)
            }

            Acquire (BTMX, 0xFFFF)
            If (Arg1)
            {
                NGBT = 0xFF
            }

            Local0 = NGBT /* External reference */
            Release (BTMX)
            If (((Local0 & Local7) == Zero))
            {
                Return (Zero)
            }

            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                BSEL = Arg0
                Local0 = BST /* External reference */
                Local3 = B1B2 (PR00, PR01)
                DerefOf (NBST [Arg0]) [0x02] = B1B2 (RC00, RC01)
                DerefOf (NBST [Arg0]) [0x03] = B1B2 (PV00, PV01)
            }

            Release (ECMX)
            If ((GACS () == One))
            {
                Local0 &= 0xFFFFFFFFFFFFFFFE
            }
            Else
            {
                Local0 &= 0xFFFFFFFFFFFFFFFD
            }

            If ((Local0 & One))
            {
                Acquire (BTMX, 0xFFFF)
                NDCB = Local7
                Release (BTMX)
            }

            DerefOf (NBST [Arg0]) [Zero] = Local0
            If ((Local0 & One))
            {
                If (((Local3 < 0x0190) || (Local3 > 0x1964)))
                {
                    Local5 = DerefOf (DerefOf (NBST [Arg0]) [One])
                    If (((Local5 < 0x0190) || (Local5 > 0x1964)))
                    {
                        Local3 = 0x0D7A
                    }
                    Else
                    {
                        Local3 = Local5
                    }
                }
            }
            ElseIf (((Local0 & 0x02) == Zero))
            {
                Local3 = Zero
            }

            DerefOf (NBST [Arg0]) [One] = Local3
            Acquire (BTMX, 0xFFFF)
            NGBT &= ~Local7
            Release (BTMX)
            Return (Zero)
        }

        Method (\_SB.PCI0.LPCB.EC0.ITLB, 0, NotSerialized)
        {
            Local0 = (B1B2 (FC00, FC01) * NLB1) /* External reference */
            Divide (Local0, 0x64, Local3, Local4)
            Divide ((Local4 + 0x09), 0x0A, Local0, Local1)
            Local0 = (B1B2 (FC00, FC01) * NLB2) /* External reference */
            Divide (Local0, 0x64, Local3, Local4)
            Divide ((Local4 + 0x09), 0x0A, Local0, Local2)
            If (ECRG)
            {
                LB1 = Local1
                LB2 = Local2
            }
        }

        Method (\_SB.PCI0.LPCB.EC0.GBTI, 1, NotSerialized)
        {
            Debug = "Enter getbattinfo"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                If ((BATP & (One << Arg0)))
                {
                    BSEL = Arg0
                    Local0 = Package (0x02)
                        {
                            Zero, 
                            Buffer (0x6B){}
                        }
                    DerefOf (Local0 [One]) [Zero] = B1B2 (DC00, DC01)
                    DerefOf (Local0 [One]) [One] = (B1B2 (DC00, 
                        DC01) >> 0x08)
                    DerefOf (Local0 [One]) [0x02] = B1B2 (FC00, FC01)
                    DerefOf (Local0 [One]) [0x03] = (B1B2 (FC00, 
                        FC01) >> 0x08)
                    DerefOf (Local0 [One]) [0x04] = B1B2 (RC00, RC01)
                    DerefOf (Local0 [One]) [0x05] = (B1B2 (RC00, 
                        RC01) >> 0x08)
                    DerefOf (Local0 [One]) [0x06] = B1B2 (ME00, ME01)
                    DerefOf (Local0 [One]) [0x07] = (B1B2 (ME00, 
                        ME01) >> 0x08)
                    DerefOf (Local0 [One]) [0x08] = B1B2 (CC00, CC01)
                    DerefOf (Local0 [One]) [0x09] = (B1B2 (CC00, 
                        CC01) >> 0x08)
                    Local1 = B1B2 (BT00, BT01)
                    Local1 -= 0x0AAC
                    Divide (Local1, 0x0A, Local2, Local3)
                    DerefOf (Local0 [One]) [0x0A] = Local3
                    DerefOf (Local0 [One]) [0x0B] = (Local3 >> 0x08
                        )
                    DerefOf (Local0 [One]) [0x0C] = B1B2 (PV00, PV01)
                    DerefOf (Local0 [One]) [0x0D] = (B1B2 (PV00, 
                        PV01) >> 0x08)
                    Local1 = B1B2 (PR00, PR01)
                    If (Local1)
                    {
                        If ((B1B2 (TS00, TS01) & 0x40))
                        {
                            Local1 = (~Local1 + One)
                            Local1 &= 0xFFFF
                        }
                    }

                    DerefOf (Local0 [One]) [0x0E] = Local1
                    DerefOf (Local0 [One]) [0x0F] = (Local1 >> 0x08
                        )
                    DerefOf (Local0 [One]) [0x10] = B1B2 (DV00, DV01)
                    DerefOf (Local0 [One]) [0x11] = (B1B2 (DV00, 
                        DV01) >> 0x08)
                    DerefOf (Local0 [One]) [0x12] = B1B2 (TS00, TS01)
                    DerefOf (Local0 [One]) [0x13] = (B1B2 (TS00, 
                        TS01) >> 0x08)
                    DerefOf (Local0 [One]) [0x14] = B1B2 (CA00, CA01)
                    DerefOf (Local0 [One]) [0x15] = (B1B2 (CA00, 
                        CA01) >> 0x08)
                    DerefOf (Local0 [One]) [0x16] = B1B2 (CB00, CB01)
                    DerefOf (Local0 [One]) [0x17] = (B1B2 (CB00, 
                        CB01) >> 0x08)
                    DerefOf (Local0 [One]) [0x18] = B1B2 (CD00, CD01)
                    DerefOf (Local0 [One]) [0x19] = (B1B2 (CD00, 
                        CD01) >> 0x08)
                    DerefOf (Local0 [One]) [0x1A] = B1B2 (CE00, CE01)
                    DerefOf (Local0 [One]) [0x1B] = (B1B2 (CE00, 
                        CE01) >> 0x08)
                    CreateField (DerefOf (Local0 [One]), 0xE0, 0x80, BTSN)
                    BTSN = GBSS (B1B2 (SN00, SN01), B1B2 (AT00, AT01))
                    Local1 = GBMF ()
                    Local2 = SizeOf (Local1)
                    CreateField (DerefOf (Local0 [One]), 0x0160, (Local2 * 0x08), BMAN)
                    BMAN = Local1
                    Local2 += 0x2C
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x80, CLBL)
                    CLBL = GCTL (Zero)
                    Local2 += 0x11
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x38, DNAM)
                    DNAM = GDNM (Zero)
                    Local2 += 0x07
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x20, DCHE)
                    DCHE = GDCH (Zero)
                    Local2 += 0x04
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAC)
                    BMAC = Zero
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAD)
                    BMAD = B1B2 (AT00, AT01)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCCU)
                    BCCU = BRCC /* External reference */
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCVO)
                    BCVO = BRCV /* External reference */
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BAVC)
                    Local1 = B1B2 (CR00, CR01)
                    If (Local1)
                    {
                        If ((B1B2 (TS00, TS01) & 0x40))
                        {
                            Local1 = (~Local1 + One)
                            Local1 &= 0xFFFF
                        }
                    }

                    BAVC = Local1
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, RTTE)
                    RTTE = B1B2 (TE00, TE01)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTE)
                    RTTE = B1B2 (BE00, BE01)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTF)
                    RTTE = B1B2 (TF00, TF01)
                    Local2 += 0x02
                    CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x08, NOBS)
                    NOBS = BATN /* External reference */
                }
                Else
                {
                    Local0 = Package (0x01)
                        {
                            0x34
                        }
                }
            }
            Else
            {
                Local0 = Package (0x01)
                    {
                        0x0D
                    }
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (\_SB.PCI0.LPCB.EC0.GBTC, 0, NotSerialized)
        {
            Debug = "Enter GetBatteryControl"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Buffer (0x04){}
                    }
                If ((BATP & One))
                {
                    BSEL = Zero
                    DerefOf (Local0 [One]) [Zero] = Zero
                    If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                    {
                        DerefOf (Local0 [One]) [Zero] = Zero
                    }
                    ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                        IDIS == One)) && (B1B2 (XC00, XC01) == Zero)))
                    {
                        DerefOf (Local0 [One]) [Zero] = One
                    }
                    ElseIf (((INAC == One) && (IDIS == 0x02)))
                    {
                        DerefOf (Local0 [One]) [Zero] = 0x02
                    }
                    ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                        IDIS == One)) && (B1B2 (XC00, XC01) == 0xFA)))
                    {
                        DerefOf (Local0 [One]) [Zero] = 0x03
                    }
                    ElseIf (((INAC == Zero) && (INCH == 0x03)))
                    {
                        DerefOf (Local0 [One]) [Zero] = 0x04
                    }
                }
                Else
                {
                    DerefOf (Local0 [One]) [Zero] = 0xFF
                }

                If ((BATP & 0x02))
                {
                    BSEL = One
                    DerefOf (Local0 [One]) [One] = Zero
                    If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                    {
                        DerefOf (Local0 [One]) [One] = Zero
                    }
                    ElseIf (((((INAC == Zero) && (INCH == One)) && (
                        IDIS == 0x02)) && (B1B2 (XC00, XC01) == Zero)))
                    {
                        DerefOf (Local0 [One]) [One] = One
                    }
                    ElseIf (((INAC == One) && (IDIS == One)))
                    {
                        DerefOf (Local0 [One]) [One] = 0x02
                    }
                    ElseIf (((((INAC == Zero) && (INCH == One)) && (
                        IDIS == 0x02)) && (B1B2 (XC00, XC01) == 0xFA)))
                    {
                        DerefOf (Local0 [One]) [One] = 0x03
                    }
                    ElseIf (((INAC == Zero) && (INCH == 0x03)))
                    {
                        DerefOf (Local0 [One]) [One] = 0x04
                    }
                }
                Else
                {
                    DerefOf (Local0 [One]) [One] = 0xFF
                }
            }
            Else
            {
                Local0 = Package (0x02)
                    {
                        0x35, 
                        Zero
                    }
            }

            Release (ECMX)
            Return (Local0)
        }

        Method (\_SB.PCI0.LPCB.EC0.SBTC, 3, NotSerialized)
        {
            Debug = "Enter SetBatteryControl"
            Acquire (ECMX, 0xFFFF)
            If (ECRG)
            {
                Local0 = Arg2
                Debug = Local0
                Local4 = Package (0x01)
                    {
                        0x06
                    }
                Local1 = Zero
                Local2 = Zero
                Local1 = DerefOf (Local0 [Zero])
                If ((Local1 == Zero))
                {
                    Debug = "battery 0"
                    If ((BATP & One))
                    {
                        Local2 = DerefOf (Local0 [One])
                        If ((Local2 == Zero))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            XC00 = Zero
                            XC01 = Zero
                            PSSB = One
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == One))
                        {
                            INAC = Zero
                            INCH = 0x02
                            IDIS = One
                            XC00 = Zero
                            XC01 = Zero
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x02))
                        {
                            INAC = One
                            INCH = One
                            IDIS = 0x02
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x03))
                        {
                            INCH = 0x02
                            IDIS = One
                            INAC = Zero
                            XC00 = 0xFA
                            XC01 = Zero
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x04))
                        {
                            XC00 = 0xFA
                            XC01 = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x05))
                        {
                            INAC = Zero
                            INCH = 0x03
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }
                    }
                    Else
                    {
                        Local4 = Package (0x01)
                            {
                                0x34
                            }
                    }
                }

                If ((Local1 == One))
                {
                    If ((BATP & 0x02))
                    {
                        Debug = "battery 1"
                        Local2 = DerefOf (Local0 [One])
                        If ((Local2 == Zero))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            XC00 = Zero
                            XC01 = Zero
                            PSSB = One
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == One))
                        {
                            INAC = Zero
                            INCH = One
                            IDIS = 0x02
                            XC00 = Zero
                            XC01 = Zero
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x02))
                        {
                            INAC = One
                            INCH = 0x02
                            IDIS = One
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x03))
                        {
                            INCH = One
                            IDIS = 0x02
                            INAC = Zero
                            XC00 = 0xFA
                            XC01 = Zero
                            PSSB = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x04))
                        {
                            INCH = Zero
                            IDIS = Zero
                            INAC = Zero
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }

                        If ((Local2 == 0x05))
                        {
                            INAC = Zero
                            INCH = 0x03
                            Local4 = Package (0x01)
                                {
                                    Zero
                                }
                        }
                    }
                    Else
                    {
                        Local4 = Package (0x01)
                            {
                                0x34
                            }
                    }
                }
            }

            Release (ECMX)
            Return (Local4)
        }
    }

    Scope (\_SB)
    {
        Name (NBTI, Package (0x02)
        {
            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Primary", 
                "100000", 
                "LIon", 
                "Hewlett-Packard", 
                Zero, 
                Zero
            }, 

            Package (0x0F)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                0x64, 
                0x64, 
                "Travel", 
                "100000", 
                "LIon", 
                "Hewlett-Packard", 
                Zero, 
                Zero
            }
        })
    }

    Scope (\_TZ)
    {
        Method (_TZ.GCGC, 0, Serialized)
        {
            Name (LTMP, Buffer (0x02){})
            If (\_SB.PCI0.LPCB.EC0.ECRG)
            {
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                LTMP = B1B2 (\_SB.PCI0.LPCB.EC0.PR00, \_SB.PCI0.LPCB.EC0.PR01)
                Release (\_SB.PCI0.LPCB.EC0.ECMX)
            }

            Return (LTMP) /* \_TZ_._TZ_.GCGC.LTMP */
        }

        Method (B1B2, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }
    }
}

