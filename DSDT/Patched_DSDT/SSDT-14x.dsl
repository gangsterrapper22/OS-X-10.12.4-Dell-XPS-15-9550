/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLJCMimZ.aml, Sat Apr  1 17:03:35 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000183 (387)
 *     Revision         0x02
 *     Checksum         0xB1
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApHwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "ApHwp", 0x00003000)
{
    External (_PR_.CPU0._CPC, MethodObj)    // 0 Arguments (from opcode)
    External (_PR_.CPU1, DeviceObj)    // (from opcode)
    External (_PR_.CPU2, DeviceObj)    // (from opcode)
    External (_PR_.CPU3, DeviceObj)    // (from opcode)
    External (_PR_.CPU4, DeviceObj)    // (from opcode)
    External (_PR_.CPU5, DeviceObj)    // (from opcode)
    External (_PR_.CPU6, DeviceObj)    // (from opcode)
    External (_PR_.CPU7, DeviceObj)    // (from opcode)

    Scope (\_PR.CPU1)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU4)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU5)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU6)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }

    Scope (\_PR.CPU7)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_PR.CPU0._CPC ())
        }
    }
}

