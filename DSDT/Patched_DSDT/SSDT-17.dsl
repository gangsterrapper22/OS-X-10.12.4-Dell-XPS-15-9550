/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLiFueEZ.aml, Sat Apr  1 17:04:09 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000011D (285)
 *     Revision         0x02
 *     Checksum         0x8E
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgPeg"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "SgRef", "SgPeg", 0x00001000)
{
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.PVID, FieldUnitObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (PVID, UnknownObj)    // Warning: Unknown object
    External (SGGP, FieldUnitObj)    // (from opcode)
    External (SGMD, FieldUnitObj)    // (from opcode)

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (SGPO, 2, Serialized)
        {
            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg0, Arg1)
                }
            }
        }

        Method (SGST, 0, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LNotEqual (SGGP, One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            If (LNotEqual (PVID, 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (SGPI, 1, Serialized)
        {
            Store (Zero, Local0)
            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.GGIV))
                {
                    Store (\_SB.GGIV (Arg0), Local0)
                }
            }

            Return (Local0)
        }
    }
}

