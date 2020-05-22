/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI Dumps/Compiled/ssdt1.aml, Thu May 21 19:13:59 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000363D (13885)
 *     Revision         0x02
 *     Checksum         0x40
 *     OEM ID           "DptfTa"
 *     OEM Table ID     "DptfTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20121018 (538054680)
 */
DefinitionBlock ("", "SSDT", 2, "DptfTa", "DptfTabl", 0x00001000)
{
    External (_PR_.AAC0, IntObj)
    External (_PR_.ACRT, IntObj)
    External (_PR_.APSV, IntObj)
    External (_PR_.CBMI, UnknownObj)
    External (_PR_.CFGD, UnknownObj)
    External (_PR_.CLVL, IntObj)
    External (_PR_.CPPC, UnknownObj)
    External (_PR_.CPU0, ProcessorObj)
    External (_PR_.CPU0._PSS, IntObj)
    External (_PR_.CPU0._TPC, IntObj)
    External (_PR_.CPU0._TSD, IntObj)
    External (_PR_.CPU0._TSS, IntObj)
    External (_PR_.CPU0.LPSS, UnknownObj)
    External (_PR_.CPU0.TPSS, UnknownObj)
    External (_PR_.CPU0.TSMC, UnknownObj)
    External (_PR_.CPU0.TSMF, UnknownObj)
    External (_PR_.CPU1, ProcessorObj)
    External (_PR_.CPU2, ProcessorObj)
    External (_PR_.CPU3, ProcessorObj)
    External (_PR_.CPU4, ProcessorObj)
    External (_PR_.CPU5, ProcessorObj)
    External (_PR_.CPU6, ProcessorObj)
    External (_PR_.CPU7, ProcessorObj)
    External (_PR_.CTC0, IntObj)
    External (_PR_.CTC1, IntObj)
    External (_PR_.CTC2, IntObj)
    External (_PR_.HDCE, UnknownObj)
    External (_PR_.PL10, UnknownObj)
    External (_PR_.PL11, UnknownObj)
    External (_PR_.PL12, UnknownObj)
    External (_PR_.PL20, UnknownObj)
    External (_PR_.PL21, UnknownObj)
    External (_PR_.PL22, UnknownObj)
    External (_PR_.PLW0, UnknownObj)
    External (_PR_.PLW1, UnknownObj)
    External (_PR_.PLW2, UnknownObj)
    External (_PR_.TAR0, UnknownObj)
    External (_PR_.TAR1, UnknownObj)
    External (_PR_.TAR2, UnknownObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, UnknownObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.B0D4, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.CRZN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.ECMX, MutexObj)
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)
    External (_SB_.PCI0.LPCB.EC0_.PHTP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.PLTP, FieldUnitObj)
    External (_SB_.PCI0.MHBR, FieldUnitObj)
    External (_TZ_.BATZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.ETMD, UnknownObj)
    External (_TZ_.EXTZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.LOCZ._TMP, MethodObj)    // 0 Arguments
    External (_TZ_.TZ00, UnknownObj)
    External (_TZ_.TZ01, UnknownObj)
    External (APPE, FieldUnitObj)
    External (ATMC, FieldUnitObj)
    External (CTDP, FieldUnitObj)
    External (DCMP, FieldUnitObj)
    External (DPAP, FieldUnitObj)
    External (DPCP, FieldUnitObj)
    External (DPPP, FieldUnitObj)
    External (DPTF, FieldUnitObj)
    External (ECEU, FieldUnitObj)
    External (LPER, FieldUnitObj)
    External (LPMP, FieldUnitObj)
    External (LPMV, FieldUnitObj)
    External (LPOE, FieldUnitObj)
    External (LPOP, FieldUnitObj)
    External (LPOS, FieldUnitObj)
    External (LPOW, FieldUnitObj)
    External (MPL0, FieldUnitObj)
    External (MPL1, FieldUnitObj)
    External (MPL2, FieldUnitObj)
    External (ODV0, FieldUnitObj)
    External (ODV1, FieldUnitObj)
    External (ODV2, FieldUnitObj)
    External (ODV3, FieldUnitObj)
    External (ODV4, FieldUnitObj)
    External (ODV5, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PDC0, UnknownObj)
    External (PPSZ, FieldUnitObj)
    External (PTMC, FieldUnitObj)
    External (S1HT, FieldUnitObj)
    External (S1PT, FieldUnitObj)
    External (S2CT, FieldUnitObj)
    External (S2PT, FieldUnitObj)
    External (S3HT, FieldUnitObj)
    External (SAC3, FieldUnitObj)
    External (SACR, FieldUnitObj)
    External (SADE, FieldUnitObj)
    External (TCNT, FieldUnitObj)
    External (TGFG, FieldUnitObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Name (_HID, EisaId ("INT3400") /* Intel Dynamic Power Performance Management */)  // _HID: Hardware ID
            Name (DOSS, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTF == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (TMPP, Package (0x0C)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                }
            })
            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                If (((\DPPP == 0x02) && CondRefOf (DP2P)))
                {
                    TMPP [TMPI] = DerefOf (DP2P [Zero])
                    TMPI++
                }

                If (((\DPPP == One) && CondRefOf (DPSP)))
                {
                    TMPP [TMPI] = DerefOf (DPSP [Zero])
                    TMPI++
                }

                If (((\DPAP == One) && CondRefOf (DASP)))
                {
                    TMPP [TMPI] = DerefOf (DASP [Zero])
                    TMPI++
                }

                If (((\DPCP == One) && CondRefOf (DCSP)))
                {
                    TMPP [TMPI] = DerefOf (DCSP [Zero])
                    TMPI++
                }

                If (((\DCMP == One) && CondRefOf (DMSP)))
                {
                    TMPP [TMPI] = DerefOf (DMSP [Zero])
                    TMPI++
                }

                If (CondRefOf (LPSP))
                {
                    If (((\SADE == One) && (\LPMP == One)))
                    {
                        TMPP [TMPI] = DerefOf (LPSP [Zero])
                        TMPI++
                    }
                }

                If (CondRefOf (CTSP))
                {
                    If (((\SADE == One) && (\CTDP == One)))
                    {
                        TMPP [TMPI] = DerefOf (CTSP [Zero])
                        TMPI++
                    }
                }

                If (((\_PR.HDCE == One) && CondRefOf (HDCP)))
                {
                    TMPP [TMPI] = DerefOf (HDCP [Zero])
                    TMPI++
                }

                If (((\APPE == One) && CondRefOf (DAPP)))
                {
                    TMPP [TMPI] = DerefOf (DAPP [Zero])
                    TMPI++
                }

                Return (TMPP) /* \_SB_.IETM.TMPP */
            }

            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   // ........
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                NUMP = SizeOf (TMPP)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    UID2 = DerefOf (TMPP [(NUMP - One)])
                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        Break
                    }

                    NUMP--
                }

                If ((NUMP == Zero))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x06
                    Return (Arg3)
                }

                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                If (((\DPPP == 0x02) && CondRefOf (\_PR.APSV)))
                {
                    DOSS = One
                    If ((PSEM == Zero))
                    {
                        PSEM = One
                        PTRP = \_PR.APSV /* External reference */
                    }

                    If (CondRefOf (DP2P))
                    {
                        UID2 = DerefOf (DP2P [Zero])
                    }

                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                \_PR.APSV = 0x6E
                            }
                            Else
                            {
                                \_PR.APSV = PTRP /* \_SB_.IETM.PTRP */
                            }

                            Notify (\_TZ.TZ00, 0x81) // Information Change
                            Notify (\_TZ.TZ01, 0x81) // Information Change
                        }

                        Return (Arg3)
                    }
                }

                If (((\DPPP == One) && CondRefOf (\_PR.APSV)))
                {
                    If ((PSEM == Zero))
                    {
                        PSEM = One
                        PTRP = \_PR.APSV /* External reference */
                    }

                    If (CondRefOf (DPSP))
                    {
                        UID2 = DerefOf (DPSP [Zero])
                    }

                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                \_PR.APSV = 0x6E
                            }
                            Else
                            {
                                \_PR.APSV = PTRP /* \_SB_.IETM.PTRP */
                            }

                            Notify (\_TZ.TZ00, 0x81) // Information Change
                            Notify (\_TZ.TZ01, 0x81) // Information Change
                        }

                        Return (Arg3)
                    }
                }

                If (((\DPAP == One) && CondRefOf (\_PR.AAC0)))
                {
                    If ((ASEM == Zero))
                    {
                        ASEM = One
                        ATRP = \_PR.AAC0 /* External reference */
                    }

                    If (CondRefOf (DASP))
                    {
                        UID2 = DerefOf (DASP [Zero])
                    }

                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                \_PR.AAC0 = 0x6E
                                \_TZ.ETMD = Zero
                            }
                            Else
                            {
                                \_PR.AAC0 = ATRP /* \_SB_.IETM.ATRP */
                                \_TZ.ETMD = One
                            }

                            Notify (\_TZ.TZ00, 0x81) // Information Change
                            Notify (\_TZ.TZ01, 0x81) // Information Change
                        }

                        Return (Arg3)
                    }
                }

                If (((\DPCP == One) && CondRefOf (\_PR.ACRT)))
                {
                    If ((YSEM == Zero))
                    {
                        YSEM = One
                        YTRP = \_PR.ACRT /* External reference */
                    }

                    If (CondRefOf (DCSP))
                    {
                        UID2 = DerefOf (DCSP [Zero])
                    }

                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        If (~(STS1 & One))
                        {
                            If ((CAP1 & One))
                            {
                                \_PR.ACRT = 0xD2
                            }
                            Else
                            {
                                \_PR.ACRT = YTRP /* \_SB_.IETM.YTRP */
                            }

                            Notify (\_TZ.TZ00, 0x81) // Information Change
                            Notify (\_TZ.TZ01, 0x81) // Information Change
                        }

                        Return (Arg3)
                    }
                }

                Return (Arg3)
            }

            Method (KTOC, 1, Serialized)
            {
                If ((Arg0 > 0x0AAC))
                {
                    Return (((Arg0 - 0x0AAC) / 0x0A))
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTOK, 1, Serialized)
            {
                Return (((Arg0 * 0x0A) + 0x0AAC))
            }

            Name (VERS, Zero)
            Name (CTYP, Zero)
            Name (ALMT, Zero)
            Name (PLMT, Zero)
            Name (WKLD, Zero)
            Name (DSTA, Zero)
            Name (RES1, Zero)
            Method (DSCP, 7, Serialized)
            {
                Name (CHNG, Zero)
                If ((Arg0 != Zero))
                {
                    Return (Zero)
                }

                If (((Arg1 == Zero) || (Arg1 == One)))
                {
                    If ((Arg1 != CTYP))
                    {
                        CHNG = One
                        CTYP = Arg1
                    }
                }

                If (((Arg1 >= Zero) || (Arg1 <= 0x05)))
                {
                    If ((Arg2 != ALMT))
                    {
                        CHNG = One
                        ALMT = Arg2
                    }
                }

                If (((Arg1 >= Zero) || (Arg1 <= 0x05)))
                {
                    If ((Arg3 != PLMT))
                    {
                        CHNG = One
                        PLMT = Arg3
                    }
                }

                If ((Arg4 != WKLD))
                {
                    CHNG = One
                    WKLD = Arg4
                }

                If ((Arg5 != DSTA))
                {
                    CHNG = One
                    DSTA = Arg5
                }

                If ((Arg6 != RES1))
                {
                    CHNG = One
                    RES1 = Arg6
                }

                If (CHNG)
                {
                    If ((\DPPP == One))
                    {
                        Notify (\_SB.IETM, 0x83) // Device-Specific Change
                    }

                    If ((\DPPP == 0x02))
                    {
                        Notify (\_SB.IETM, 0x87) // Device-Specific
                    }

                    If ((\DPAP == One))
                    {
                        Notify (\_SB.IETM, 0x84) // Reserved
                    }
                }
            }

            Name (ODVX, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (ODVP, 0, Serialized)
            {
                ODVX [Zero] = \ODV0 /* External reference */
                ODVX [One] = \ODV1 /* External reference */
                ODVX [0x02] = \ODV2 /* External reference */
                ODVX [0x03] = \ODV3 /* External reference */
                ODVX [0x04] = \ODV4 /* External reference */
                ODVX [0x05] = \ODV5 /* External reference */
                Return (ODVX) /* \_SB_.IETM.ODVX */
            }
        }
    }

    Scope (\_SB.PCI0.B0D4)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((SADE == One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (MBAR, SystemMemory, ((MHBR << 0x0F) + 0x5000), 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (((XPCC == Zero) && CondRefOf (\_PR.CBMI)))
            {
                Switch (ToInteger (\_PR.CBMI))
                {
                    Case (Zero)
                    {
                        If (((\_PR.CLVL >= One) && (\_PR.CLVL <= 0x03)))
                        {
                            CPL0 ()
                            XPCC = One
                        }
                    }
                    Case (One)
                    {
                        If (((\_PR.CLVL == 0x02) || (\_PR.CLVL == 0x03)))
                        {
                            CPL1 ()
                            XPCC = One
                        }
                    }
                    Case (0x02)
                    {
                        If ((\_PR.CLVL == 0x03))
                        {
                            CPL2 ()
                            XPCC = One
                        }
                    }

                }
            }

            Return (NPCC) /* \_SB_.PCI0.B0D4.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If ((PWRU == Zero))
            {
                PPUU = One
            }
            Else
            {
                PPUU = (PWRU-- << 0x02)
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PCI0.B0D4.CPNU.CNVT */
            If ((Arg1 == Zero))
            {
                Return (CNVT) /* \_SB_.PCI0.B0D4.CPNU.CNVT */
            }
            Else
            {
                CNVT *= 0x03E8
                RMDR *= 0x03E8
                Divide (RMDR, PPUU, Local0, RMDR) /* \_SB_.PCI0.B0D4.CPNU.RMDR */
                CNVT += RMDR /* \_SB_.PCI0.B0D4.CPNU.RMDR */
                Return (CNVT) /* \_SB_.PCI0.B0D4.CPNU.CNVT */
            }
        }

        Method (CPL0, 0, NotSerialized)
        {
            \_SB.PCI0.B0D4.NPCC [Zero] = 0x02
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [One] = \MPL0 /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x02] = 0x1770
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x03] = (\_PR.PLW0 * 0x03E8)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x04] = ((\_PR.PLW0 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [One] = CPNU (\_PR.PL20, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x02] = CPNU (\_PR.PL20, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL1, 0, NotSerialized)
        {
            \_SB.PCI0.B0D4.NPCC [Zero] = 0x02
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [One] = \MPL1 /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x02] = CPNU (\_PR.PL11, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x03] = (\_PR.PLW1 * 0x03E8)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x04] = ((\_PR.PLW1 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [One] = CPNU (\_PR.PL21, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x02] = CPNU (\_PR.PL21, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Method (CPL2, 0, NotSerialized)
        {
            \_SB.PCI0.B0D4.NPCC [Zero] = 0x02
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [Zero] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [One] = \MPL2 /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x02] = CPNU (\_PR.PL12, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x03] = (\_PR.PLW2 * 0x03E8)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x04] = ((\_PR.PLW2 * 0x03E8
                ) + 0x0FA0)
            DerefOf (\_SB.PCI0.B0D4.NPCC [One]) [0x05] = PPSZ /* External reference */
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [Zero] = One
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [One] = CPNU (\_PR.PL22, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x02] = CPNU (\_PR.PL22, One)
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x03] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x04] = Zero
            DerefOf (\_SB.PCI0.B0D4.NPCC [0x02]) [0x05] = PPSZ /* External reference */
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPPC, 1, Serialized)
        {
            If (CondRefOf (\_PR.CPPC))
            {
                \_PR.CPPC = Arg0
            }

            Switch (ToInteger (\TCNT))
            {
                Case (0x08)
                {
                    Notify (\_PR.CPU0, 0x80) // Status Change
                    Notify (\_PR.CPU1, 0x80) // Status Change
                    Notify (\_PR.CPU2, 0x80) // Status Change
                    Notify (\_PR.CPU3, 0x80) // Status Change
                    Notify (\_PR.CPU4, 0x80) // Status Change
                    Notify (\_PR.CPU5, 0x80) // Status Change
                    Notify (\_PR.CPU6, 0x80) // Status Change
                    Notify (\_PR.CPU7, 0x80) // Status Change
                }
                Case (0x04)
                {
                    Notify (\_PR.CPU0, 0x80) // Status Change
                    Notify (\_PR.CPU1, 0x80) // Status Change
                    Notify (\_PR.CPU2, 0x80) // Status Change
                    Notify (\_PR.CPU3, 0x80) // Status Change
                }
                Case (0x02)
                {
                    Notify (\_PR.CPU0, 0x80) // Status Change
                    Notify (\_PR.CPU1, 0x80) // Status Change
                }
                Default
                {
                    Notify (\_PR.CPU0, 0x80) // Status Change
                }

            }
        }

        Name (TLPO, Package (0x06)
        {
            One, 
            One, 
            Zero, 
            One, 
            One, 
            0x02
        })
        Method (CLPO, 0, NotSerialized)
        {
            TLPO [One] = LPOE /* External reference */
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Local1 = SizeOf (\_PR.CPU0.TPSS)
                }
                Else
                {
                    Local1 = SizeOf (\_PR.CPU0.LPSS)
                }
            }
            Else
            {
                Local1 = Zero
            }

            If ((LPOP < Local1))
            {
                TLPO [0x02] = LPOP /* External reference */
            }
            Else
            {
                Local1--
                TLPO [0x02] = Local1
            }

            TLPO [0x03] = LPOS /* External reference */
            TLPO [0x04] = LPOW /* External reference */
            TLPO [0x05] = LPER /* External reference */
            Return (TLPO) /* \_SB_.PCI0.B0D4.TLPO */
        }

        Method (SPUR, 1, NotSerialized)
        {
            If ((Arg0 <= \TCNT))
            {
                If ((\_SB.PAGD._STA () == 0x0F))
                {
                    \_SB.PAGD._PUR [One] = Arg0
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Name (AEXL, Package (0x04)
        {
            "svchost.exe", 
            "dllhost.exe", 
            "smss.exe", 
            "WinSAT.exe"
        })
        Method (PCCC, 0, Serialized)
        {
            PCCX [Zero] = One
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    DerefOf (PCCX [One]) [Zero] = 0xA7F8
                    DerefOf (PCCX [One]) [One] = 0x00017318
                }
                Case (0x2F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x9858
                    DerefOf (PCCX [One]) [One] = 0x00014C08
                }
                Case (0x25)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x7148
                    DerefOf (PCCX [One]) [One] = 0xD6D8
                }
                Case (0x19)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x3E80
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0F)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x7D00
                }
                Case (0x0B)
                {
                    DerefOf (PCCX [One]) [Zero] = 0x36B0
                    DerefOf (PCCX [One]) [One] = 0x61A8
                }
                Default
                {
                    DerefOf (PCCX [One]) [Zero] = 0xFF
                    DerefOf (PCCX [One]) [One] = 0xFF
                }

            }

            Return (PCCX) /* \_SB_.PCI0.B0D4.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (CEUC, 0, NotSerialized)
        {
            CEUP [Zero] = One
            CEUP [One] = ECEU /* External reference */
            CEUP [0x02] = TGFG /* External reference */
            CEUP [0x03] = 0x28
            CEUP [0x04] = 0x14
            CEUP [0x05] = 0x14
            Return (CEUP) /* \_SB_.PCI0.B0D4.CEUP */
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            LSTM = Arg0
            Notify (\_SB.PCI0.B0D4, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                Return (\_PR.CPU0._PSS) /* External reference */
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_PR.CPU0._TSS))
            {
                Return (\_PR.CPU0._TSS) /* External reference */
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x05)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_PR.CPU0._TPC))
            {
                Return (\_PR.CPU0._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((CondRefOf (\PDC0) && (\PDC0 != 0x80000000)))
            {
                If ((\PDC0 & 0x04))
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }
                    })
                }
            }
            Else
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_PR.CPU0._TSD))
            {
                Return (\_PR.CPU0._TSD) /* External reference */
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If ((CondRefOf (\_PR.CPU0._TSS) && CondRefOf (\_PR.CFGD)))
            {
                If ((\_PR.CFGD & 0x2000))
                {
                    Return ((SizeOf (\_PR.CPU0.TSMF) - One))
                }
                Else
                {
                    Return ((SizeOf (\_PR.CPU0.TSMC) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_PR.CPU0._PSS))
            {
                If ((\_SB.OSCP & 0x0400))
                {
                    Return ((SizeOf (\_PR.CPU0.TPSS) - One))
                }
                Else
                {
                    Return ((SizeOf (\_PR.CPU0.LPSS) - One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            If (CTYP)
            {
                Local1 = \_SB.IETM.CTOK (PTMC)
            }
            Else
            {
                Local1 = \_SB.IETM.CTOK (ATMC)
            }

            If ((LSTM >= Local1))
            {
                Return ((Local1 - 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            If (CTYP)
            {
                Local0 = \_SB.IETM.CTOK (PTMC)
            }
            Else
            {
                Local0 = \_SB.IETM.CTOK (ATMC)
            }

            Local0 -= 0x32
            If ((LSTM >= Local0))
            {
                Return ((Local0 - 0x14))
            }
            Else
            {
                Return (Local0)
            }
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            If (CTYP)
            {
                Return (\_SB.IETM.CTOK (ATMC))
            }
            Else
            {
                Return (\_SB.IETM.CTOK (PTMC))
            }
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (SACR))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (SAC3))
        }

        Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
        {
            If (((Arg0 == Zero) || (Arg0 == One)))
            {
                CTYP = Arg0
                P8XH (Zero, Arg1)
                P8XH (One, Arg2)
                Notify (\_SB.PCI0.B0D4, 0x91) // Device-Specific
            }
        }

        Name (VERS, Zero)
        Name (CTYP, Zero)
        Name (ALMT, Zero)
        Name (PLMT, Zero)
        Name (WKLD, Zero)
        Name (DSTA, Zero)
        Name (RES1, Zero)
        Method (DSCP, 7, Serialized)
        {
            If (((Arg1 == Zero) || (Arg1 == One)))
            {
                VERS = Arg0
                CTYP = Arg1
                ALMT = Arg2
                PLMT = Arg3
                WKLD = Arg4
                DSTA = Arg5
                RES1 = Arg6
                P8XH (Zero, Arg2)
                P8XH (One, Arg3)
                Notify (\_SB.PCI0.B0D4, 0x91) // Device-Specific
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067")
        })
    }

    Scope (\_SB.PCI0.B0D4)
    {
        Method (TDPL, 0, Serialized)
        {
            Name (AAAA, Zero)
            Name (BBBB, Zero)
            Name (CCCC, Zero)
            Name (PPUU, Zero)
            Local0 = CTNL /* \_SB_.PCI0.B0D4.CTNL */
            If (((Local0 == One) || (Local0 == 0x02)))
            {
                Local0 = \_PR.CLVL /* External reference */
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }

            If ((CLCK == One))
            {
                Local0 = One
            }

            AAAA = CPNU (\_PR.PL10, One)
            BBBB = CPNU (\_PR.PL11, One)
            CCCC = CPNU (\_PR.PL12, One)
            Name (TMP1, Package (0x01)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP2, Package (0x02)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP3, Package (0x03)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            If ((Local0 == 0x03))
            {
                If ((AAAA > BBBB))
                {
                    If ((AAAA > CCCC))
                    {
                        If ((BBBB > CCCC))
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local4 = One
                            LEV1 = One
                            Local5 = 0x02
                            LEV2 = 0x02
                        }
                        Else
                        {
                            Local3 = Zero
                            LEV0 = Zero
                            Local5 = One
                            LEV1 = 0x02
                            Local4 = 0x02
                            LEV2 = One
                        }
                    }
                    Else
                    {
                        Local5 = Zero
                        LEV0 = 0x02
                        Local3 = One
                        LEV1 = Zero
                        Local4 = 0x02
                        LEV2 = One
                    }
                }
                ElseIf ((BBBB > CCCC))
                {
                    If ((AAAA > CCCC))
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local3 = One
                        LEV1 = Zero
                        Local5 = 0x02
                        LEV2 = 0x02
                    }
                    Else
                    {
                        Local4 = Zero
                        LEV0 = One
                        Local5 = One
                        LEV1 = 0x02
                        Local3 = 0x02
                        LEV2 = Zero
                    }
                }
                Else
                {
                    Local5 = Zero
                    LEV0 = 0x02
                    Local4 = One
                    LEV1 = One
                    Local3 = 0x02
                    LEV2 = Zero
                }

                Local1 = (\_PR.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local3]) [Zero] = AAAA /* \_SB_.PCI0.B0D4.TDPL.AAAA */
                DerefOf (TMP3 [Local3]) [One] = Local2
                DerefOf (TMP3 [Local3]) [0x02] = \_PR.CTC0 /* External reference */
                DerefOf (TMP3 [Local3]) [0x03] = Local1
                DerefOf (TMP3 [Local3]) [0x04] = Zero
                Local1 = (\_PR.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local4]) [Zero] = BBBB /* \_SB_.PCI0.B0D4.TDPL.BBBB */
                DerefOf (TMP3 [Local4]) [One] = Local2
                DerefOf (TMP3 [Local4]) [0x02] = \_PR.CTC1 /* External reference */
                DerefOf (TMP3 [Local4]) [0x03] = Local1
                DerefOf (TMP3 [Local4]) [0x04] = Zero
                Local1 = (\_PR.TAR2 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP3 [Local5]) [Zero] = CCCC /* \_SB_.PCI0.B0D4.TDPL.CCCC */
                DerefOf (TMP3 [Local5]) [One] = Local2
                DerefOf (TMP3 [Local5]) [0x02] = \_PR.CTC2 /* External reference */
                DerefOf (TMP3 [Local5]) [0x03] = Local1
                DerefOf (TMP3 [Local5]) [0x04] = Zero
                Return (TMP3) /* \_SB_.PCI0.B0D4.TDPL.TMP3 */
            }

            If ((Local0 == 0x02))
            {
                If ((AAAA > BBBB))
                {
                    Local3 = Zero
                    Local4 = One
                    LEV0 = Zero
                    LEV1 = One
                    LEV2 = Zero
                }
                Else
                {
                    Local4 = Zero
                    Local3 = One
                    LEV0 = One
                    LEV1 = Zero
                    LEV2 = Zero
                }

                Local1 = (\_PR.TAR0 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local3]) [Zero] = AAAA /* \_SB_.PCI0.B0D4.TDPL.AAAA */
                DerefOf (TMP2 [Local3]) [One] = Local2
                DerefOf (TMP2 [Local3]) [0x02] = \_PR.CTC0 /* External reference */
                DerefOf (TMP2 [Local3]) [0x03] = Local1
                DerefOf (TMP2 [Local3]) [0x04] = Zero
                Local1 = (\_PR.TAR1 + One)
                Local2 = (Local1 * 0x64)
                DerefOf (TMP2 [Local4]) [Zero] = BBBB /* \_SB_.PCI0.B0D4.TDPL.BBBB */
                DerefOf (TMP2 [Local4]) [One] = Local2
                DerefOf (TMP2 [Local4]) [0x02] = \_PR.CTC1 /* External reference */
                DerefOf (TMP2 [Local4]) [0x03] = Local1
                DerefOf (TMP2 [Local4]) [0x04] = Zero
                Return (TMP2) /* \_SB_.PCI0.B0D4.TDPL.TMP2 */
            }

            If ((Local0 == One))
            {
                Switch (ToInteger (\_PR.CBMI))
                {
                    Case (Zero)
                    {
                        Local1 = (\_PR.TAR0 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = AAAA /* \_SB_.PCI0.B0D4.TDPL.AAAA */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_PR.CTC0 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = Zero
                        LEV1 = Zero
                        LEV2 = Zero
                    }
                    Case (One)
                    {
                        Local1 = (\_PR.TAR1 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = BBBB /* \_SB_.PCI0.B0D4.TDPL.BBBB */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_PR.CTC1 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = One
                        LEV1 = One
                        LEV2 = One
                    }
                    Case (0x02)
                    {
                        Local1 = (\_PR.TAR2 + One)
                        Local2 = (Local1 * 0x64)
                        DerefOf (TMP1 [Zero]) [Zero] = CCCC /* \_SB_.PCI0.B0D4.TDPL.CCCC */
                        DerefOf (TMP1 [Zero]) [One] = Local2
                        DerefOf (TMP1 [Zero]) [0x02] = \_PR.CTC2 /* External reference */
                        DerefOf (TMP1 [Zero]) [0x03] = Local1
                        DerefOf (TMP1 [Zero]) [0x04] = Zero
                        LEV0 = 0x02
                        LEV1 = 0x02
                        LEV2 = 0x02
                    }

                }

                Return (TMP1) /* \_SB_.PCI0.B0D4.TDPL.TMP1 */
            }

            Return (Zero)
        }

        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PCI0.B0D4.MAXT */
        }

        Name (LEV0, Zero)
        Name (LEV1, Zero)
        Name (LEV2, Zero)
        Method (STDP, 1, Serialized)
        {
            If ((Arg0 >= \_PR.CLVL))
            {
                Return (Zero)
            }

            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Local0 = LEV0 /* \_SB_.PCI0.B0D4.LEV0 */
                }
                Case (One)
                {
                    Local0 = LEV1 /* \_SB_.PCI0.B0D4.LEV1 */
                }
                Case (0x02)
                {
                    Local0 = LEV2 /* \_SB_.PCI0.B0D4.LEV2 */
                }

            }

            Switch (ToInteger (Local0))
            {
                Case (Zero)
                {
                    CPL0 ()
                }
                Case (One)
                {
                    CPL1 ()
                }
                Case (0x02)
                {
                    CPL2 ()
                }

            }

            Notify (\_SB.PCI0.B0D4, 0x83) // Device-Specific Change
        }
    }

    Scope (\_SB.IETM)
    {
        Name (LPSP, Package (0x01)
        {
            ToUUID ("b9455b06-7949-40c6-abf2-363a70c8706c")
        })
        Method (CLPM, 0, NotSerialized)
        {
            If ((\_SB.PCI0.B0D4.LPMS == Zero))
            {
                Return (Zero)
            }

            Return (LPMV) /* External reference */
        }

        Name (LPMT, Package (0x05)
        {
            One, 
            Package (0x06)
            {
                \_SB.PCI0.B0D4, 
                Zero, 
                0x00020000, 
                0x32, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                \_SB.PCI0.B0D4, 
                Zero, 
                0x00040000, 
                0x02, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                \_SB.PCI0.B0D4, 
                One, 
                0x00020000, 
                0x32, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x06)
            {
                \_SB.PCI0.B0D4, 
                0x09, 
                0x00010000, 
                0x3A98, 
                0x80000000, 
                0x80000000
            }
        })
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Device (SEN1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, "SEN1")  // _UID: Unique ID
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (_STR, Unicode ("EXTZ-External/Remote 1 Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTF == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Return (\_TZ.EXTZ._TMP ())
                }
                Else
                {
                    Return (0x0BB8)
                }
            }

            Name (PATC, 0x02)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S1PT))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S1HT))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.LPCB.EC0.SEN1, 0x91) // Device-Specific
                }
            }

            Name (VERS, Zero)
            Name (ALMT, Zero)
            Name (PLMT, Zero)
            Name (WKLD, Zero)
            Name (DSTA, Zero)
            Name (RES1, Zero)
            Method (DSCP, 7, Serialized)
            {
                If (((Arg1 == Zero) || (Arg1 == One)))
                {
                    VERS = Arg0
                    CTYP = Arg1
                    ALMT = Arg2
                    PLMT = Arg3
                    WKLD = Arg4
                    DSTA = Arg5
                    RES1 = Arg6
                    Notify (\_SB.PCI0.LPCB.EC0.SEN1, 0x91) // Device-Specific
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Device (SEN2)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, "SEN2")  // _UID: Unique ID
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (_STR, Unicode ("LOCZ-Local/Internal Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTF == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Return (\_TZ.LOCZ._TMP ())
                }
                Else
                {
                    Return (0x0BB8)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.CRZN = 0x04
                    Local0 = \_SB.IETM.KTOC (Arg0)
                    If ((Local0 <= 0x2A))
                    {
                        Local0 = 0x2A
                    }

                    \_SB.PCI0.LPCB.EC0.PLTP = Local0
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    \_SB.PCI0.LPCB.EC0.CRZN = 0x04
                    Local0 = \_SB.IETM.KTOC (Arg0)
                    \_SB.PCI0.LPCB.EC0.PHTP = Local0
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S2PT))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S2CT))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.PCI0.LPCB.EC0.SEN2, 0x91) // Device-Specific
                }
            }

            Name (VERS, Zero)
            Name (ALMT, Zero)
            Name (PLMT, Zero)
            Name (WKLD, Zero)
            Name (DSTA, Zero)
            Name (RES1, Zero)
            Method (DSCP, 7, Serialized)
            {
                If (((Arg1 == Zero) || (Arg1 == One)))
                {
                    VERS = Arg0
                    CTYP = Arg1
                    ALMT = Arg2
                    PLMT = Arg3
                    WKLD = Arg4
                    DSTA = Arg5
                    RES1 = Arg6
                    Notify (\_SB.PCI0.LPCB.EC0.SEN2, 0x91) // Device-Specific
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Device (SEN3)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, "SEN3")  // _UID: Unique ID
            Name (FAUX, Zero)
            Name (SAUX, Zero)
            Name (_STR, Unicode ("BATZ-Battery Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTF == One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Return (\_TZ.BATZ._TMP ())
                }
                Else
                {
                    Return (0x0BB8)
                }
            }

            Name (PATC, 0x02)
            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (0x0E30)
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S3HT))
            }

            Name (VERS, Zero)
            Name (ALMT, Zero)
            Name (PLMT, Zero)
            Name (WKLD, Zero)
            Name (DSTA, Zero)
            Name (RES1, Zero)
            Method (DSCP, 7, Serialized)
            {
                Name (CHNG, Zero)
                If (((Arg1 == Zero) || (Arg1 == One)))
                {
                    If ((Arg0 != VERS))
                    {
                        CHNG = One
                        VERS = Arg0
                    }

                    If ((Arg1 != CTYP))
                    {
                        CHNG = One
                        CTYP = Arg1
                    }

                    If ((Arg2 != ALMT))
                    {
                        CHNG = One
                        ALMT = Arg2
                    }

                    If ((Arg3 != PLMT))
                    {
                        CHNG = One
                        PLMT = Arg3
                    }

                    If ((Arg4 != WKLD))
                    {
                        CHNG = One
                        WKLD = Arg4
                    }

                    If ((Arg5 != DSTA))
                    {
                        CHNG = One
                        DSTA = Arg5
                    }

                    If ((Arg6 != RES1))
                    {
                        CHNG = One
                        RES1 = Arg6
                    }

                    If (CHNG)
                    {
                        Notify (\_SB.PCI0.LPCB.EC0.SEN3, 0x91) // Device-Specific
                    }
                }
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (ETRM, Package (0x04)
        {
            Package (0x04)
            {
                \_SB.PCI0.LPCB.EC0.SEN1, 
                "INT3403", 
                0x06, 
                "SEN1"
            }, 

            Package (0x04)
            {
                \_SB.PCI0.LPCB.EC0.SEN2, 
                "INT3403", 
                0x06, 
                "SEN2"
            }, 

            Package (0x04)
            {
                \_SB.PCI0.LPCB.EC0.SEN3, 
                "INT3403", 
                0x06, 
                "SEN3"
            }, 

            Package (0x04)
            {
                \_SB.PCI0.B0D4, 
                "8086_1903", 
                Zero, 
                "0x00040000"
            }
        })
    }

    Scope (\_SB.IETM)
    {
        Name (_TRT, Package (0x04)  // _TRT: Thermal Relationship Table
        {
            Package (0x08)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.B0D4, 
                0x24, 
                0x32, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x08)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.LPCB.EC0.SEN3, 
                0x14, 
                0x0258, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x08)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.LPCB.EC0.SEN1, 
                0x14, 
                0x0258, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x08)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.LPCB.EC0.SEN2, 
                0x64, 
                0x3C, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            }
        })
    }

    Scope (\_SB.IETM)
    {
        Name (PTTL, 0x14)
        Name (PSVT, Package (0x03)
        {
            0x02, 
            Package (0x0C)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.LPCB.EC0.SEN2, 
                0x07, 
                0x012C, 
                0x0C3C, 
                0x09, 
                0x00010000, 
                "MAX", 
                0xFA, 
                0x0A, 
                0x0A, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PCI0.B0D4, 
                \_SB.PCI0.B0D4, 
                One, 
                0x32, 
                0x0E8A, 
                0x09, 
                0x00010000, 
                "MAX", 
                0x01F4, 
                0x0A, 
                0x14, 
                Zero
            }
        })
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75")
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3")
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae")
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a")
        })
        Name (DMSP, Package (0x01)
        {
            ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
        })
        Name (WPSP, Package (0x01)
        {
            ToUUID ("64568ccd-6597-4bfc-b9d6-9d33854013ce")
        })
        Name (HDCP, Package (0x01)
        {
            ToUUID ("be84babf-c4d4-403d-b495-3128fd44dac1")
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d")
        })
    }

    Scope (\_SB.IETM)
    {
        Name (_DEP, Package (0x01)  // _DEP: Dependencies
        {
            \_SB.PCI0.LPCB.EC0
        })
        Method (GDDV, 0, Serialized)
        {
            Return (Package (0x01)
            {
                Buffer (0x093A)
                {
                    /* 0000 */  0xE5, 0x1F, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x01,  // ........
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0010 */  0x14, 0x00, 0x00, 0x00, 0x2F, 0x73, 0x68, 0x61,  // ..../sha
                    /* 0018 */  0x72, 0x65, 0x64, 0x2F, 0x65, 0x78, 0x70, 0x6F,  // red/expo
                    /* 0020 */  0x72, 0x74, 0x2F, 0x61, 0x70, 0x61, 0x74, 0x00,  // rt/apat.
                    /* 0028 */  0x07, 0x00, 0x00, 0x00, 0xB1, 0x01, 0x00, 0x00,  // ........
                    /* 0030 */  0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
                    /* 0040 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0048 */  0x08, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00,  // ........
                    /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x50, 0x4C, 0x31, 0x4D,  // ....PL1M
                    /* 0058 */  0x41, 0x58, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07,  // AX......
                    /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50,  // .......P
                    /* 0068 */  0x4C, 0x31, 0x4D, 0x41, 0x58, 0x00, 0x08, 0x00,  // L1MAX...
                    /* 0070 */  0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0078 */  0x00, 0x00, 0x39, 0x35, 0x30, 0x30, 0x00, 0x04,  // ..9500..
                    /* 0080 */  0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0088 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07,  // ........
                    /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50,  // .......P
                    /* 0098 */  0x4C, 0x31, 0x4D, 0x49, 0x4E, 0x00, 0x08, 0x00,  // L1MIN...
                    /* 00A0 */  0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 00A8 */  0x00, 0x00, 0x50, 0x4C, 0x31, 0x4D, 0x49, 0x4E,  // ..PL1MIN
                    /* 00B0 */  0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,  // ........
                    /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x35, 0x30,  // .....550
                    /* 00C0 */  0x30, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00,  // 0.......
                    /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00,  // ........
                    /* 00D0 */  0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 00D8 */  0x00, 0x00, 0x50, 0x53, 0x56, 0x54, 0x00, 0x08,  // ..PSVT..
                    /* 00E0 */  0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 00E8 */  0x00, 0x00, 0x00, 0x50, 0x53, 0x56, 0x54, 0x00,  // ...PSVT.
                    /* 00F0 */  0x08, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00,  // ........
                    /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0x4E, 0x65, 0x77, 0x5F,  // ....New_
                    /* 0100 */  0x54, 0x61, 0x62, 0x6C, 0x65, 0x5F, 0x63, 0x6C,  // Table_cl
                    /* 0108 */  0x61, 0x6D, 0x73, 0x68, 0x65, 0x6C, 0x6C, 0x00,  // amshell.
                    /* 0110 */  0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,  // ........
                    /* 0118 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,  // ........
                    /* 0120 */  0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0128 */  0x50, 0x4C, 0x31, 0x4D, 0x41, 0x58, 0x00, 0x08,  // PL1MAX..
                    /* 0130 */  0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0138 */  0x00, 0x00, 0x00, 0x50, 0x4C, 0x31, 0x4D, 0x41,  // ...PL1MA
                    /* 0140 */  0x58, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00,  // X.......
                    /* 0148 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x39, 0x35,  // ......95
                    /* 0150 */  0x30, 0x30, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02,  // 00......
                    /* 0158 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,  // ........
                    /* 0160 */  0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0168 */  0x00, 0x00, 0x00, 0x50, 0x4C, 0x31, 0x4D, 0x49,  // ...PL1MI
                    /* 0170 */  0x4E, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07, 0x00,  // N.......
                    /* 0178 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x4C,  // ......PL
                    /* 0180 */  0x31, 0x4D, 0x49, 0x4E, 0x00, 0x08, 0x00, 0x00,  // 1MIN....
                    /* 0188 */  0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0190 */  0x00, 0x33, 0x35, 0x30, 0x30, 0x00, 0x04, 0x00,  // .3500...
                    /* 0198 */  0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 01A0 */  0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00,  // ........
                    /* 01A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x53,  // ......PS
                    /* 01B0 */  0x56, 0x54, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05,  // VT......
                    /* 01B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50,  // .......P
                    /* 01C0 */  0x53, 0x56, 0x54, 0x00, 0x08, 0x00, 0x00, 0x00,  // SVT.....
                    /* 01C8 */  0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 01D0 */  0x4E, 0x65, 0x77, 0x5F, 0x54, 0x61, 0x62, 0x6C,  // New_Tabl
                    /* 01D8 */  0x65, 0x5F, 0x74, 0x61, 0x62, 0x6C, 0x65, 0x74,  // e_tablet
                    /* 01E0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00,  // ........
                    /* 01E8 */  0x00, 0x2F, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64,  // ./shared
                    /* 01F0 */  0x2F, 0x65, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x2F,  // /export/
                    /* 01F8 */  0x61, 0x70, 0x63, 0x74, 0x00, 0x07, 0x00, 0x00,  // apct....
                    /* 0200 */  0x00, 0xCC, 0x03, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0208 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0210 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0218 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0220 */  0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0228 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0230 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0238 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0240 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0250 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0258 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0260 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0268 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0270 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0278 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0280 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0288 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0290 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0298 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 02A0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 02A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 02B0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 02B8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 02C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 02C8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 02D0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 02D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 02E0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 02E8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 02F8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0300 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0308 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0310 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0318 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0320 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0328 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0330 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0338 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0340 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0348 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0350 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0358 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0360 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0368 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0370 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0378 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0380 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0388 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0390 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0398 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 03A0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 03A8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 03B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 03B8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 03C0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 03C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 03D0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 03D8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 03E0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 03E8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 03F0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,  // ........
                    /* 03F8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0400 */  0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0408 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0410 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0418 */  0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0420 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0428 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0430 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0438 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0440 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0448 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0450 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0458 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0460 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0468 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0470 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0478 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0480 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0488 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0490 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0498 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 04A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 04A8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 04B0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 04B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 04C0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 04C8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 04D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 04D8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 04E0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 04E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 04F0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 04F8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0500 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0508 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0510 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0518 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0520 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0528 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0530 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0538 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0540 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0548 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0550 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0558 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0560 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0568 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0570 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0578 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0580 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0588 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0590 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 0598 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 05A0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 05A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 05B0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 05B8 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 05C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,  // ........
                    /* 05C8 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 05D0 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00,  // .....(..
                    /* 05D8 */  0x00, 0x2F, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64,  // ./shared
                    /* 05E0 */  0x2F, 0x74, 0x61, 0x62, 0x6C, 0x65, 0x73, 0x2F,  // /tables/
                    /* 05E8 */  0x70, 0x73, 0x76, 0x74, 0x2F, 0x4E, 0x65, 0x77,  // psvt/New
                    /* 05F0 */  0x5F, 0x54, 0x61, 0x62, 0x6C, 0x65, 0x5F, 0x63,  // _Table_c
                    /* 05F8 */  0x6C, 0x61, 0x6D, 0x73, 0x68, 0x65, 0x6C, 0x6C,  // lamshell
                    /* 0600 */  0x00, 0x07, 0x00, 0x00, 0x00, 0x7E, 0x01, 0x00,  // .....~..
                    /* 0608 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,  // ........
                    /* 0610 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,  // ........
                    /* 0618 */  0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0620 */  0x00, 0x5C, 0x5F, 0x53, 0x42, 0x5F, 0x2E, 0x50,  // .\_SB_.P
                    /* 0628 */  0x43, 0x49, 0x30, 0x2E, 0x42, 0x30, 0x44, 0x34,  // CI0.B0D4
                    /* 0630 */  0x00, 0x08, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00,  // ........
                    /* 0638 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x5F, 0x53,  // .....\_S
                    /* 0640 */  0x42, 0x5F, 0x2E, 0x50, 0x43, 0x49, 0x30, 0x2E,  // B_.PCI0.
                    /* 0648 */  0x4C, 0x50, 0x43, 0x42, 0x2E, 0x45, 0x43, 0x30,  // LPCB.EC0
                    /* 0650 */  0x5F, 0x2E, 0x53, 0x45, 0x4E, 0x32, 0x00, 0x04,  // _.SEN2..
                    /* 0658 */  0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0660 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x78,  // .......x
                    /* 0668 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0670 */  0x00, 0x00, 0x00, 0x96, 0x0C, 0x00, 0x00, 0x00,  // ........
                    /* 0678 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09,  // ........
                    /* 0680 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0688 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,  // ........
                    /* 0690 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0698 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4D,  // .......M
                    /* 06A0 */  0x41, 0x58, 0x00, 0x04, 0x00, 0x00, 0x00, 0xFA,  // AX......
                    /* 06A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 06B0 */  0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 06B8 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,  // ........
                    /* 06C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 06C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 06D0 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10,  // ........
                    /* 06D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C,  // .......\
                    /* 06E0 */  0x5F, 0x53, 0x42, 0x5F, 0x2E, 0x50, 0x43, 0x49,  // _SB_.PCI
                    /* 06E8 */  0x30, 0x2E, 0x42, 0x30, 0x44, 0x34, 0x00, 0x08,  // 0.B0D4..
                    /* 06F0 */  0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 06F8 */  0x00, 0x00, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x5F,  // ...\_SB_
                    /* 0700 */  0x2E, 0x50, 0x43, 0x49, 0x30, 0x2E, 0x42, 0x30,  // .PCI0.B0
                    /* 0708 */  0x44, 0x34, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,  // D4......
                    /* 0710 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0718 */  0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00,  // ...2....
                    /* 0720 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x8A,  // ........
                    /* 0728 */  0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0730 */  0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0738 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0740 */  0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,  // ........
                    /* 0748 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0750 */  0x00, 0x00, 0x00, 0x4D, 0x41, 0x58, 0x00, 0x04,  // ...MAX..
                    /* 0758 */  0x00, 0x00, 0x00, 0xF4, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 0760 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,  // ........
                    /* 0768 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,  // ........
                    /* 0770 */  0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0778 */  0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0780 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,  // ........
                    /* 0788 */  0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x2F,  // ...%.../
                    /* 0790 */  0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0x2F, 0x74,  // shared/t
                    /* 0798 */  0x61, 0x62, 0x6C, 0x65, 0x73, 0x2F, 0x70, 0x73,  // ables/ps
                    /* 07A0 */  0x76, 0x74, 0x2F, 0x4E, 0x65, 0x77, 0x5F, 0x54,  // vt/New_T
                    /* 07A8 */  0x61, 0x62, 0x6C, 0x65, 0x5F, 0x74, 0x61, 0x62,  // able_tab
                    /* 07B0 */  0x6C, 0x65, 0x74, 0x00, 0x07, 0x00, 0x00, 0x00,  // let.....
                    /* 07B8 */  0x7E, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,  // ~.......
                    /* 07C0 */  0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 07C8 */  0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00,  // ........
                    /* 07D0 */  0x00, 0x00, 0x00, 0x00, 0x5C, 0x5F, 0x53, 0x42,  // ....\_SB
                    /* 07D8 */  0x5F, 0x2E, 0x50, 0x43, 0x49, 0x30, 0x2E, 0x42,  // _.PCI0.B
                    /* 07E0 */  0x30, 0x44, 0x34, 0x00, 0x08, 0x00, 0x00, 0x00,  // 0D4.....
                    /* 07E8 */  0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 07F0 */  0x5C, 0x5F, 0x53, 0x42, 0x5F, 0x2E, 0x50, 0x43,  // \_SB_.PC
                    /* 07F8 */  0x49, 0x30, 0x2E, 0x4C, 0x50, 0x43, 0x42, 0x2E,  // I0.LPCB.
                    /* 0800 */  0x45, 0x43, 0x30, 0x5F, 0x2E, 0x53, 0x45, 0x4E,  // EC0_.SEN
                    /* 0808 */  0x32, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00,  // 2.......
                    /* 0810 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0818 */  0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..<.....
                    /* 0820 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x6E, 0x0C,  // ......n.
                    /* 0828 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0830 */  0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0838 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0840 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00,  // ........
                    /* 0848 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0850 */  0x00, 0x00, 0x4D, 0x41, 0x58, 0x00, 0x04, 0x00,  // ..MAX...
                    /* 0858 */  0x00, 0x00, 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0860 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00,  // ........
                    /* 0868 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0870 */  0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0878 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0880 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00,  // ........
                    /* 0888 */  0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0890 */  0x00, 0x00, 0x5C, 0x5F, 0x53, 0x42, 0x5F, 0x2E,  // ..\_SB_.
                    /* 0898 */  0x50, 0x43, 0x49, 0x30, 0x2E, 0x42, 0x30, 0x44,  // PCI0.B0D
                    /* 08A0 */  0x34, 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00,  // 4.......
                    /* 08A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x5F,  // ......\_
                    /* 08B0 */  0x53, 0x42, 0x5F, 0x2E, 0x50, 0x43, 0x49, 0x30,  // SB_.PCI0
                    /* 08B8 */  0x2E, 0x42, 0x30, 0x44, 0x34, 0x00, 0x04, 0x00,  // .B0D4...
                    /* 08C0 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 08C8 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x32, 0x00,  // ......2.
                    /* 08D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 08D8 */  0x00, 0x00, 0x8A, 0x0E, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 08E0 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00,  // ........
                    /* 08E8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 08F0 */  0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                    /* 08F8 */  0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0900 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4D, 0x41,  // ......MA
                    /* 0908 */  0x58, 0x00, 0x04, 0x00, 0x00, 0x00, 0xF4, 0x01,  // X.......
                    /* 0910 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0918 */  0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0920 */  0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x14, 0x00,  // ........
                    /* 0928 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
                    /* 0930 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                    /* 0938 */  0x00, 0x00                                       // ..
                }
            })
        }
    }
}

