/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLlnOAHl.aml, Sat Apr  1 16:42:44 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008D (141)
 *     Revision         0x02
 *     Checksum         0x66
 *     OEM ID           "INTEL "
 *     OEM Table ID     "sensrhub"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "sensrhub", 0x00000000)
{
    External (_SB_.PCI0.I2C0.DFUD, UnknownObj)    // (from opcode)
    External (BID_, FieldUnitObj)    // (from opcode)
    External (SDS0, FieldUnitObj)    // (from opcode)
    External (USBH, FieldUnitObj)    // (from opcode)

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LOr (And (SDS0, One), And (USBH, One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

