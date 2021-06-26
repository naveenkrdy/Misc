/*
 * All AMD B550 / A520 chipset boards follow ACPI 5.0 or later specs which declares processor in ACPI as DeviceObj rather than ProcessorObj, resulting 
 * in boot failure on macOS. This SSDT fixes this issue by declaring our own processorObj and calling existing processor Devices within.
 */
DefinitionBlock ("", "SSDT", 2, "XLNC", "CPUR", 0x00005000)
{
    External (_SB_.PLTF.C000, DeviceObj)
    External (_SB_.PLTF.C001, DeviceObj)
    External (_SB_.PLTF.C002, DeviceObj)
    External (_SB_.PLTF.C003, DeviceObj)
    External (_SB_.PLTF.C004, DeviceObj)
    External (_SB_.PLTF.C005, DeviceObj)
    External (_SB_.PLTF.C006, DeviceObj)
    External (_SB_.PLTF.C007, DeviceObj)
    External (_SB_.PLTF.C008, DeviceObj)
    External (_SB_.PLTF.C009, DeviceObj)
    External (_SB_.PLTF.C00A, DeviceObj)
    External (_SB_.PLTF.C00B, DeviceObj)
    External (_SB_.PLTF.C00C, DeviceObj)
    External (_SB_.PLTF.C00D, DeviceObj)
    External (_SB_.PLTF.C00E, DeviceObj)
    External (_SB_.PLTF.C00F, DeviceObj)
    External (_SB_.PLTF.C010, DeviceObj)
    External (_SB_.PLTF.C011, DeviceObj)
    External (_SB_.PLTF.C012, DeviceObj)
    External (_SB_.PLTF.C013, DeviceObj)
    External (_SB_.PLTF.C014, DeviceObj)
    External (_SB_.PLTF.C015, DeviceObj)
    External (_SB_.PLTF.C016, DeviceObj)
    External (_SB_.PLTF.C017, DeviceObj)
    External (_SB_.PLTF.C018, DeviceObj)
    External (_SB_.PLTF.C019, DeviceObj)
    External (_SB_.PLTF.C01A, DeviceObj)
    External (_SB_.PLTF.C01B, DeviceObj)
    External (_SB_.PLTF.C01C, DeviceObj)
    External (_SB_.PLTF.C01D, DeviceObj)
    External (_SB_.PLTF.C01E, DeviceObj)
    External (_SB_.PLTF.C01F, DeviceObj)

    Scope (_SB)
    {
        Processor (PR00, 0x00, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C000) /* External reference */
        }

        Processor (PR01, 0x01, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C001) /* External reference */
        }

        Processor (PR02, 0x02, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C002) /* External reference */
        }

        Processor (PR03, 0x03, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C003) /* External reference */
        }

        Processor (PR04, 0x04, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C004) /* External reference */
        }

        Processor (PR05, 0x05, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C005) /* External reference */
        }

        Processor (PR06, 0x06, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C006) /* External reference */
        }

        Processor (PR07, 0x07, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C007) /* External reference */
        }

        Processor (PR08, 0x08, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C008) /* External reference */
        }

        Processor (PR09, 0x09, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C009) /* External reference */
        }

        Processor (PR10, 0x0A, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C00A) /* External reference */
        }

        Processor (PR11, 0x0B, 0x00000810, 0x06)
        {
            Return (\_SB.PLTF.C00B) /* External reference */
        }

        Processor (PR12, 0x0C, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C00C))
            {
                Return (\_SB.PLTF.C00C) /* External reference */
            }
        }

        Processor (PR13, 0x0D, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C00D))
            {
                Return (\_SB.PLTF.C00D) /* External reference */
            }
        }

        Processor (PR14, 0x0E, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C00E))
            {
                Return (\_SB.PLTF.C00E) /* External reference */
            }
        }

        Processor (PR15, 0x0F, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C00F))
            {
                Return (\_SB.PLTF.C00F) /* External reference */
            }
        }

        Processor (PR16, 0x10, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C010))
            {
                Return (\_SB.PLTF.C010) /* External reference */
            }
        }

        Processor (PR17, 0x11, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C011))
            {
                Return (\_SB.PLTF.C011) /* External reference */
            }
        }

        Processor (PR18, 0x12, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C012))
            {
                Return (\_SB.PLTF.C012) /* External reference */
            }
        }

        Processor (PR19, 0x13, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C013))
            {
                Return (\_SB.PLTF.C013) /* External reference */
            }
        }

        Processor (PR20, 0x14, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C014))
            {
                Return (\_SB.PLTF.C014) /* External reference */
            }
        }

        Processor (PR21, 0x15, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C015))
            {
                Return (\_SB.PLTF.C015) /* External reference */
            }
        }

        Processor (PR22, 0x16, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C016))
            {
                Return (\_SB.PLTF.C016) /* External reference */
            }
        }

        Processor (PR23, 0x17, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C017))
            {
                Return (\_SB.PLTF.C017) /* External reference */
            }
        }

        Processor (PR24, 0x18, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C018))
            {
                Return (\_SB.PLTF.C018) /* External reference */
            }
        }

        Processor (PR25, 0x19, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C019))
            {
                Return (\_SB.PLTF.C019) /* External reference */
            }
        }

        Processor (PR26, 0x1A, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01A))
            {
                Return (\_SB.PLTF.C01A) /* External reference */
            }
        }

        Processor (PR27, 0x1B, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01B))
            {
                Return (\_SB.PLTF.C01B) /* External reference */
            }
        }

        Processor (PR28, 0x1C, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01C))
            {
                Return (\_SB.PLTF.C01C) /* External reference */
            }
        }

        Processor (PR29, 0x1D, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01D))
            {
                Return (\_SB.PLTF.C01D) /* External reference */
            }
        }

        Processor (PR30, 0x1E, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01E))
            {
                Return (\_SB.PLTF.C01E) /* External reference */
            }
        }

        Processor (PR31, 0x1F, 0x00000810, 0x06)
        {
            If (CondRefOf (\_SB.PLTF.C01F))
            {
                Return (\_SB.PLTF.C01F) /* External reference */
            }
        }
    }
}

