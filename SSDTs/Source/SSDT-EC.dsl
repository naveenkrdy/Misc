/*
 * Since macOS 10.15 AppleACPIEC driver expects an EC device "PNP0C09" at boot, without it will result in boot failure.
 * While renaming EC0 to EC might potentially work initially, it connects an incompatible driver (AppleACPIEC) to your hardware.
 * This can make your system unbootable at any time or hide bugs that could trigger randomly. As a alternative use this SSDT to disable
 * the existing EC device and add a fake EC device in place.
 */

DefinitionBlock ("", "SSDT", 2, "XLNC", "EC__", 0x00005000)
{
    External (_SB_.PCI0.SBRG, DeviceObj)
    External (_SB_.PCI0.SBRG.EC0_, DeviceObj)

    If (CondRefOf (_SB.PCI0.SBRG.EC0))
    {
        Scope (_SB.PCI0.SBRG.EC0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }

    Scope (_SB.PCI0.SBRG)
    {
        Device (EC)
        {
            Name (_HID, "FAKE00EC")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}