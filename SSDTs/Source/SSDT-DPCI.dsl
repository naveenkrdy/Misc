// Disables PCI device

DefinitionBlock ("", "SSDT", 2, "XLNC", "DPCI", 0x00005000)
{
    
    External (_SB_.PCI0.XXXX, DeviceObj)
    
    Scope (_SB.PCI0.XXXX)    // Replace ACPI Path
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (DE01, PCI_Config, 0x50, One)
            Field (DE01, AnyAcc, NoLock, Preserve)
            {
                    ,   4, 
                DDDD,   1
            }

            Method (_STA, 0, Serialized) 
            {
                DDDD = One
                Return (Zero)
            }
        }
    }
    
    }