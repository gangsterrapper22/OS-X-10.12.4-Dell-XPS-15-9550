/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLeTh029.aml, Sat Apr  1 16:46:39 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000426 (1062)
 *     Revision         0x02
 *     Checksum         0x3A
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Ist"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Ist", 0x00003000)
{
    External (_PR_.CFGD, FieldUnitObj)    // (from opcode)
    External (_PR_.CPPC, FieldUnitObj)    // (from opcode)
    External (_PR_.CPU0, DeviceObj)    // (from opcode)
    External (_SB_.OSCP, IntObj)    // (from opcode)
    External (CFGD, UnknownObj)    // Warning: Unknown object
    External (PDC0, IntObj)    // (from opcode)
    External (TCNT, FieldUnitObj)    // (from opcode)

    Scope (\_PR.CPU0)
    {
        Method (_PPC, 0, NotSerialized)  // _PPC: Performance Present Capabilities
        {
            Return (\_PR.CPPC)
        }

        Method (_PCT, 0, NotSerialized)  // _PCT: Performance Control
        {
            If (LAnd (And (CFGD, One), And (PDC0, One)))
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

        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (And (\_SB.OSCP, 0x0400))
            {
                Return (TPSS)
            }
            Else
            {
                Return (LPSS)
            }
        }

        Name (LPSS, Package (0x10)
        {
            Package (0x06)
            {
                0x0A29, 
                0xF9BC, 
                0x0A, 
                0x0A, 
                0x2200, 
                0x2200
            }, 

            Package (0x06)
            {
                0x0A28, 
                0xAFC8, 
                0x0A, 
                0x0A, 
                0x1A00, 
                0x1A00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0xA6D4, 
                0x0A, 
                0x0A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x9571, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x8CFF, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x84B9, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x7CA3, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x0708, 
                0x6E80, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x66DB, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x5F5F, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x0578, 
                0x50E3, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0x4B61, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x447F, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                0x3DC5, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x0384, 
                0x30C6, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                0x2A7F, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }
        })
        Name (TPSS, Package (0x14)
        {
            Package (0x06)
            {
                0x0A29, 
                0xAFC8, 
                0x0A, 
                0x0A, 
                0x2300, 
                0x2300
            }, 

            Package (0x06)
            {
                0x0A28, 
                0xAFC8, 
                0x0A, 
                0x0A, 
                0x1A00, 
                0x1A00
            }, 

            Package (0x06)
            {
                0x09C4, 
                0xA6D4, 
                0x0A, 
                0x0A, 
                0x1900, 
                0x1900
            }, 

            Package (0x06)
            {
                0x0960, 
                0x9E0D, 
                0x0A, 
                0x0A, 
                0x1800, 
                0x1800
            }, 

            Package (0x06)
            {
                0x08FC, 
                0x9571, 
                0x0A, 
                0x0A, 
                0x1700, 
                0x1700
            }, 

            Package (0x06)
            {
                0x0898, 
                0x8CFF, 
                0x0A, 
                0x0A, 
                0x1600, 
                0x1600
            }, 

            Package (0x06)
            {
                0x0834, 
                0x84B9, 
                0x0A, 
                0x0A, 
                0x1500, 
                0x1500
            }, 

            Package (0x06)
            {
                0x07D0, 
                0x7CA3, 
                0x0A, 
                0x0A, 
                0x1400, 
                0x1400
            }, 

            Package (0x06)
            {
                0x076C, 
                0x764F, 
                0x0A, 
                0x0A, 
                0x1300, 
                0x1300
            }, 

            Package (0x06)
            {
                0x0708, 
                0x6E80, 
                0x0A, 
                0x0A, 
                0x1200, 
                0x1200
            }, 

            Package (0x06)
            {
                0x06A4, 
                0x66DB, 
                0x0A, 
                0x0A, 
                0x1100, 
                0x1100
            }, 

            Package (0x06)
            {
                0x0640, 
                0x5F5F, 
                0x0A, 
                0x0A, 
                0x1000, 
                0x1000
            }, 

            Package (0x06)
            {
                0x05DC, 
                0x580F, 
                0x0A, 
                0x0A, 
                0x0F00, 
                0x0F00
            }, 

            Package (0x06)
            {
                0x0578, 
                0x50E3, 
                0x0A, 
                0x0A, 
                0x0E00, 
                0x0E00
            }, 

            Package (0x06)
            {
                0x0514, 
                0x4B61, 
                0x0A, 
                0x0A, 
                0x0D00, 
                0x0D00
            }, 

            Package (0x06)
            {
                0x04B0, 
                0x447F, 
                0x0A, 
                0x0A, 
                0x0C00, 
                0x0C00
            }, 

            Package (0x06)
            {
                0x044C, 
                0x3DC5, 
                0x0A, 
                0x0A, 
                0x0B00, 
                0x0B00
            }, 

            Package (0x06)
            {
                0x03E8, 
                0x3731, 
                0x0A, 
                0x0A, 
                0x0A00, 
                0x0A00
            }, 

            Package (0x06)
            {
                0x0384, 
                0x30C6, 
                0x0A, 
                0x0A, 
                0x0900, 
                0x0900
            }, 

            Package (0x06)
            {
                0x0320, 
                0x2A7F, 
                0x0A, 
                0x0A, 
                0x0800, 
                0x0800
            }
        })
        Name (PSDF, Zero)
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (LNot (PSDF))
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
                Store (Ones, PSDF)
            }

            If (And (PDC0, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }

        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
    }
}

