// Disable Nvme

DefinitionBlock ("", "SSDT", 2, "XLNC", "DNVME", 0x00005000)
{
    External (_SB_.PCIX.XXXX.XXXX, DeviceObj)

    If (_OSI ("Darwin"))
    {
        Method (_SB.PCIX.XXXX.XXXX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0A)
            {
                "name", 
                Buffer (0x0C)
                {
                    "#NVME Block"
                }, 

                "IOName", 
                "#NVME Block", 
                "class-code", 
                Buffer (0x04)
                {
                     0xFF, 0xFF, 0xFF, 0xFF                           // ....
                }, 

                "vendor-id", 
                Buffer (0x04)
                {
                     0xFF, 0xFF, 0x00, 0x00                           // ....
                }, 

                "device-id", 
                Buffer (0x04)
                {
                     0xFF, 0xFF, 0x00, 0x00                           // ....
                }
            })
        }
    }
}

