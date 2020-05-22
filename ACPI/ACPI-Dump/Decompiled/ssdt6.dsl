/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI Dumps/Compiled/ssdt6.aml, Thu May 21 19:13:59 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000059F (1439)
 *     Revision         0x02
 *     Checksum         0x70
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "SDS_RTD3"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20121018 (538054680)
 */
DefinitionBlock ("", "SSDT", 2, "HPQOEM", "SDS_RTD3", 0x00001000)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.GGOV, UnknownObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (_SB_.PCI0.XHC_.HP01, UnknownObj)
    External (_SB_.PCI0.XHC_.HP02, UnknownObj)
    External (_SB_.PCI0.XHC_.HP03, UnknownObj)
    External (_SB_.PCI0.XHC_.HP05, UnknownObj)
    External (_SB_.PCI0.XHC_.HP07, UnknownObj)
    External (_SB_.PCI0.XHC_.HP09, UnknownObj)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)
    External (_SB_.PCI0.XHC_.XHCV, UnknownObj)
    External (_SB_.SGOV, MethodObj)    // Warning: Unknown method, guessing 2 arguments

    Scope (\_SB.PCI0.XHC)
    {
        Name (UPWR, Zero)
        Name (USPP, Zero)
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Name (HS1C, Zero)
        Name (HS2C, Zero)
        Name (HS3C, Zero)
        Name (HS5C, Zero)
        Name (HS7C, Zero)
        Name (HS9C, Zero)
        Method (PS0X, 0, Serialized)
        {
            \_SB.PCI0.XHC.USPP = Zero
        }

        Method (PS2X, 0, Serialized)
        {
            If ((\_SB.PCI0.XHC.XHCV == 0xFFFF))
            {
                Return (Zero)
            }

            If ((\_SB.PCI0.XHC.HP01 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= One
            }

            If ((\_SB.PCI0.XHC.HP02 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= 0x02
            }

            If ((\_SB.PCI0.XHC.HP03 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= 0x04
            }

            If ((\_SB.PCI0.XHC.HP05 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= 0x08
            }

            If ((\_SB.PCI0.XHC.HP07 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= 0x10
            }

            If ((\_SB.PCI0.XHC.HP09 == Zero))
            {
                \_SB.PCI0.XHC.USPP |= 0x20
            }
        }

        Method (PS3X, 0, Serialized)
        {
        }

        Method (INIR, 0, Serialized)
        {
            If ((\_SB.PCI0.XHC.XHCV == 0xFFFF))
            {
                Return (Zero)
            }

            If ((\_SB.PCI0.XHC.HP01 == One))
            {
                HS1C = One
            }

            If ((\_SB.PCI0.XHC.HP02 == One))
            {
                HS2C = One
            }

            If ((\_SB.PCI0.XHC.HP03 == One))
            {
                HS3C = One
            }

            If ((\_SB.PCI0.XHC.HP05 == One))
            {
                HS5C = One
            }

            If ((\_SB.PCI0.XHC.HP07 == One))
            {
                HS7C = One
            }

            If ((\_SB.PCI0.XHC.HP09 == One))
            {
                HS9C = One
            }
        }

        PowerResource (PRFP, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.GGOV == 0x02020014))
                {
                    One
                    Return (Zero)
                }
                Else
                {
                    Return (One)
                }
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \_SB.SGOV (0x02020014, 0xFFFFFFFFFFFFFFFE)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \_SB.SGOV (0x02020014, One)
            }
        }

        PowerResource (PRFC, 0x00, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_SB.GGOV == 0x02010013))
                {
                    One
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                \_SB.SGOV (0x02010013, One)
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                \_SB.SGOV (0x02010013, 0xFFFFFFFFFFFFFFFE)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            If ((\_SB.PCI0.XHC.RHUB.HS2C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFP
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }

        Method (_PR2, 0, NotSerialized)  // _PR2: Power Resources for D2
        {
            If ((\_SB.PCI0.XHC.RHUB.HS2C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFP
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            If ((\_SB.PCI0.XHC.RHUB.HS2C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFP
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_PR0, 0, NotSerialized)  // _PR0: Power Resources for D0
        {
            If ((\_SB.PCI0.XHC.RHUB.HS3C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFC
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }

        Method (_PR2, 0, NotSerialized)  // _PR2: Power Resources for D2
        {
            If ((\_SB.PCI0.XHC.RHUB.HS3C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFC
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }

        Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
        {
            If ((\_SB.PCI0.XHC.RHUB.HS3C == One))
            {
                Return (Package (0x01)
                {
                    \_SB.PCI0.XHC.RHUB.PRFC
                })
            }
            Else
            {
                Return (Package (0x00){})
            }
        }
    }
}

