/*
 * AppleUSBPower property injector, use in conjunction with SSDT-EC.
 *
 * Be warned that power supply values can be different for different systems.
 * Depending on the configuration these values must match injected IOKitPersonalities
 * for com.apple.driver.AppleUSBMergeNub. iPad remains being the most reliable device 
 * for testing USB port charging support.
 *
 * Note: This SSDT required if you are inecting power properties through injector kext.
 */
DefinitionBlock ("", "SSDT", 2, "XLNC", "USBX", 0x00005000)
{
    Scope (_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }
        }
    }
}