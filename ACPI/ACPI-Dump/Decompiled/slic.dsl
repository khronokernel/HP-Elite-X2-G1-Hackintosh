/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190509 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembly of /Users/mykolagrymalyuk/Documents/GitHub/HP-Elite-X2-G1-Hackintosh/ACPI Dumps/Compiled/slic.aml, Thu May 21 19:13:59 2020
 *
 * ACPI Data Table [SLIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SLIC"    [Software Licensing Description Table]
[004h 0004   4]                 Table Length : 00000176
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : EF
[00Ah 0010   6]                       Oem ID : "HPQOEM"
[010h 0016   8]                 Oem Table ID : "SLIC-BPC"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "HP  "
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036 338] Software Licensing Structure : \
    00 00 00 00 9C 00 00 00 06 02 00 00 00 24 00 00 \
    52 53 41 31 00 04 00 00 01 00 01 00 5B AB 60 56 \
    BC 58 1E E8 C1 D2 A1 5C E5 4F BB FD 1D A9 8C 94 \
    B4 AE 08 11 DC 13 59 D3 7F F6 3E 87 31 B9 95 74 \
    10 DA 3B A4 5B B5 19 82 7C 39 D7 0D 7C 22 AC 1C \
    2A 84 E9 0A 88 6D FA B1 E2 D8 E8 21 96 E1 2E 68 \
    9A BF 44 45 3E 3C 8E 99 90 DE 37 38 57 0B 92 15 \
    BC DE FF F2 07 7E B5 40 8C 51 3A C3 02 48 F6 13 \
    12 72 FB 42 78 E6 47 88 54 C7 B0 F0 93 9E FB 04 \
    B7 B8 B8 90 DE DB ED 32 E1 FB 54 A6 01 00 00 00 \
    B6 00 00 00 00 00 02 00 48 50 51 4F 45 4D 53 4C \
    49 43 2D 42 50 43 57 49 4E 44 4F 57 53 20 01 00 \
    02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 33 06 D7 20 8A 0A 63 95 08 94 A9 60 30 37 \
    CE 9F E8 B9 7B 07 DD CF 72 B3 0B E4 0C 88 79 3C \
    E8 46 01 E8 8B E0 60 F3 63 18 DE 7B 5C BB A9 53 \
    FE B1 C1 D4 82 67 5B 6C 13 45 9E 66 49 23 CC 33 \
    09 92 76 FA 31 70 35 F1 57 F8 BA A9 56 6F 3F 41 \
    84 A5 3A E9 CD 6C 67 43 9B 70 91 7F B4 06 F8 26 \
    E2 FC 19 46 E5 F6 D7 66 0C 2D 73 99 BA 94 38 64 \
    D7 24 98 EB DA 39 64 C8 D3 8C 36 87 FD E5 47 BB \
    A6 B8 

Raw Table Data: Length 374 (0x176)

    0000: 53 4C 49 43 76 01 00 00 01 EF 48 50 51 4F 45 4D  // SLICv.....HPQOEM
    0010: 53 4C 49 43 2D 42 50 43 01 00 00 00 48 50 20 20  // SLIC-BPC....HP  
    0020: 01 00 00 00 00 00 00 00 9C 00 00 00 06 02 00 00  // ................
    0030: 00 24 00 00 52 53 41 31 00 04 00 00 01 00 01 00  // .$..RSA1........
    0040: 5B AB 60 56 BC 58 1E E8 C1 D2 A1 5C E5 4F BB FD  // [.`V.X.....\.O..
    0050: 1D A9 8C 94 B4 AE 08 11 DC 13 59 D3 7F F6 3E 87  // ..........Y...>.
    0060: 31 B9 95 74 10 DA 3B A4 5B B5 19 82 7C 39 D7 0D  // 1..t..;.[...|9..
    0070: 7C 22 AC 1C 2A 84 E9 0A 88 6D FA B1 E2 D8 E8 21  // |"..*....m.....!
    0080: 96 E1 2E 68 9A BF 44 45 3E 3C 8E 99 90 DE 37 38  // ...h..DE><....78
    0090: 57 0B 92 15 BC DE FF F2 07 7E B5 40 8C 51 3A C3  // W........~.@.Q:.
    00A0: 02 48 F6 13 12 72 FB 42 78 E6 47 88 54 C7 B0 F0  // .H...r.Bx.G.T...
    00B0: 93 9E FB 04 B7 B8 B8 90 DE DB ED 32 E1 FB 54 A6  // ...........2..T.
    00C0: 01 00 00 00 B6 00 00 00 00 00 02 00 48 50 51 4F  // ............HPQO
    00D0: 45 4D 53 4C 49 43 2D 42 50 43 57 49 4E 44 4F 57  // EMSLIC-BPCWINDOW
    00E0: 53 20 01 00 02 00 00 00 00 00 00 00 00 00 00 00  // S ..............
    00F0: 00 00 00 00 00 00 33 06 D7 20 8A 0A 63 95 08 94  // ......3.. ..c...
    0100: A9 60 30 37 CE 9F E8 B9 7B 07 DD CF 72 B3 0B E4  // .`07....{...r...
    0110: 0C 88 79 3C E8 46 01 E8 8B E0 60 F3 63 18 DE 7B  // ..y<.F....`.c..{
    0120: 5C BB A9 53 FE B1 C1 D4 82 67 5B 6C 13 45 9E 66  // \..S.....g[l.E.f
    0130: 49 23 CC 33 09 92 76 FA 31 70 35 F1 57 F8 BA A9  // I#.3..v.1p5.W...
    0140: 56 6F 3F 41 84 A5 3A E9 CD 6C 67 43 9B 70 91 7F  // Vo?A..:..lgC.p..
    0150: B4 06 F8 26 E2 FC 19 46 E5 F6 D7 66 0C 2D 73 99  // ...&...F...f.-s.
    0160: BA 94 38 64 D7 24 98 EB DA 39 64 C8 D3 8C 36 87  // ..8d.$...9d...6.
    0170: FD E5 47 BB A6 B8                                // ..G...
