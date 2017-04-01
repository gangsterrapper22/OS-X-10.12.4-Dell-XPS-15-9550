/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLxfDKwU.aml, Sat Apr  1 17:03:25 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D8 (216)
 *     Revision         0x02
 *     Checksum         0xC5
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Hwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Hwp", 0x00003000)
{
    External (_PR_.CPU0, DeviceObj)    // (from opcode)
    External (_PR_.CPU0.CPC1, PkgObj)    // (from opcode)
    External (_PR_.CPU0.CPC2, PkgObj)    // (from opcode)
    External (_PR_.HWPA, FieldUnitObj)    // (from opcode)
    External (_PR_.HWPV, FieldUnitObj)    // (from opcode)
    External (CPC1, IntObj)    // Warning: Unknown object
    External (CPC2, IntObj)    // Warning: Unknown object
    External (HWPV, UnknownObj)    // Warning: Unknown object

    Scope (\_PR.CPU0)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Store (RefOf (CPC1), Local0)
            Store (\_PR.HWPA, Index (DerefOf (Index (DerefOf (Local0), 0x06)), 0x07))
            ShiftRight (\_PR.HWPA, 0x08, Local1)
            Store (Local1, Index (DerefOf (Index (DerefOf (Local0), 0x06)), 0x08))
            If (LEqual (HWPV, One))
            {
                Return (CPC1)
            }
            ElseIf (LEqual (HWPV, 0x02))
            {
                Return (CPC2)
            }
        }
    }
}

