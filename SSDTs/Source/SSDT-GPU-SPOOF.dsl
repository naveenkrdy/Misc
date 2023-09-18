
DefinitionBlock ("", "SSDT", 2, "XLNC", "GPUSPOOF", 0x00005000)
{
    External (_SB_.PCXX, DeviceObj)
    External (_SB_.PCXX.XXXX, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCXX.XXXX)
    {
        If (_OSI ("Darwin"))
        {
            Device (GFX0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x08)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x07)
                            {
                                "Slot-X"
                            }, 

                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x34, 0x12, 0x00, 0x00                           // 4...
                            }, 

                            "no-gfx-spoof", 
                            Buffer (0x04)
                            {
                                 0x01, 0x00, 0x00, 0x00                           // ....
                            }, 

                            "model", 
                            Buffer (0x17)
                            {
                                "GPU Model"
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }
        }
    }
}

