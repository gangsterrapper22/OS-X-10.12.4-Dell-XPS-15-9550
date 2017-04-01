/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLZ64Ws0.aml, Sat Apr  1 16:45:44 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000559 (1369)
 *     Revision         0x02
 *     Checksum         0xC3
 *     OEM ID           "INTEL "
 *     OEM Table ID     "zpodd"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "zpodd", 0x00001000)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.GEXP.SGEP, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PCI0.SAT0, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (BID_, FieldUnitObj)    // (from opcode)
    External (RCG0, FieldUnitObj)    // (from opcode)

    OperationRegion (ECBX, SystemIO, 0xB2, 0x02)
    Field (ECBX, ByteAcc, NoLock, Preserve)
    {
        ECSI,   8, 
        ECSD,   8
    }

    If (LAnd (And (RCG0, One), One))
    {
        Scope (\_SB.PCI0.SAT0.PRT1)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    While (One)
                                    {
                                        Store (BID, _T_2)
                                        If (LEqual (_T_2, 0x0B))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        ElseIf (LNotEqual (Match (Package (0x04)
                                                        {
                                                            0x43, 
                                                            0x51, 
                                                            0x44, 
                                                            0x45
                                                        }, MEQ, _T_2, MTR, Zero, Zero), Ones))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            Store (0x55, ECSD)
                            Store (0xE2, ECSI)
                            While (One)
                            {
                                Store (BID, _T_3)
                                If (LEqual (_T_3, 0x0B))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (LNotEqual (Match (Package (0x04)
                                                {
                                                    0x43, 
                                                    0x51, 
                                                    0x44, 
                                                    0x45
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            Store (0xAA, ECSD)
                            Store (0xE2, ECSI)
                            While (One)
                            {
                                Store (BID, _T_4)
                                If (LEqual (_T_4, 0x0B))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x43, 
                                                    0x51
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x44, 
                                                    0x45
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_SB.PCI0.SAT0.PRT3)
        {
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                If (LEqual (Arg0, ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66")))
                {
                    While (One)
                    {
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, Zero))
                        {
                            While (One)
                            {
                                Store (ToInteger (Arg1), _T_1)
                                If (LEqual (_T_1, One))
                                {
                                    While (One)
                                    {
                                        Store (BID, _T_2)
                                        If (LEqual (_T_2, 0x0B))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        ElseIf (LNotEqual (Match (Package (0x04)
                                                        {
                                                            0x43, 
                                                            0x51, 
                                                            0x44, 
                                                            0x45
                                                        }, MEQ, _T_2, MTR, Zero, Zero), Ones))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x0F                                           
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                           
                                            })
                                        }

                                        Break
                                    }
                                }
                                Else
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                           
                                    })
                                }

                                Break
                            }
                        }
                        ElseIf (LEqual (_T_0, One))
                        {
                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x02))
                        {
                            While (One)
                            {
                                Store (BID, _T_3)
                                If (LEqual (_T_3, 0x0B))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, Zero)
                                }
                                ElseIf (LNotEqual (Match (Package (0x04)
                                                {
                                                    0x43, 
                                                    0x51, 
                                                    0x44, 
                                                    0x45
                                                }, MEQ, _T_3, MTR, Zero, Zero), Ones))
                                {
                                    \_SB.SGOV (0x01060001, Zero)
                                }

                                Break
                            }

                            Return (One)
                        }
                        ElseIf (LEqual (_T_0, 0x03))
                        {
                            While (One)
                            {
                                Store (BID, _T_4)
                                If (LEqual (_T_4, 0x0B))
                                {
                                    \_SB.PCI0.GEXP.SGEP (Zero, 0x17, One)
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x43, 
                                                    0x51
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01040001), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }
                                ElseIf (LNotEqual (Match (Package (0x02)
                                                {
                                                    0x44, 
                                                    0x45
                                                }, MEQ, _T_4, MTR, Zero, Zero), Ones))
                                {
                                    If (LEqual (\_SB.GGIV (0x01050000), Zero))
                                    {
                                        \_SB.SGOV (0x01060001, One)
                                    }
                                }

                                Break
                            }

                            Sleep (0x0A)
                            Return (One)
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Break
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_E02, 0, Serialized)  // _Exx: Edge-Triggered GPE
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                While (One)
                {
                    Store (BID, _T_0)
                    If (LNotEqual (Match (Package (0x04)
                                    {
                                        0x43, 
                                        0x51, 
                                        0x44, 
                                        0x45
                                    }, MEQ, _T_0, MTR, Zero, Zero), Ones))
                    {
                        If (LEqual (\_SB.GGIV (0x01040001), Zero))
                        {
                            \_SB.SGOV (0x01060001, One)
                        }

                        Notify (\_SB.PCI0.SAT0, 0x81)
                    }
                    Else
                    {
                        Return (Zero)
                    }

                    Break
                }
            }
        }
    }
}

