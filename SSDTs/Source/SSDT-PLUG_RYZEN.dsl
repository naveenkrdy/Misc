/*
 * XCPM power management enabler. Needed for AGPMInjector.kext
 */
DefinitionBlock ("", "SSDT", 2, "XLNC", "PLUGRYZ", 0x00005000)
{
    External (_PR_.C000, ProcessorObj)
    External (_PR_.P000, ProcessorObj)
    External (_SB_.PR00, ProcessorObj)

    Method (PMPM, 4, NotSerialized)
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    If (CondRefOf (_PR.C000))
    {
        Scope (_PR.C000)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Return (PMPM (Arg0, Arg1, Arg2, Arg3))
            }
        }
    }

    If (CondRefOf (_PR.P000))
    {
        Scope (_PR.P000)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Return (PMPM (Arg0, Arg1, Arg2, Arg3))
            }
        }
    }

    If (CondRefOf (_SB.PR00))
    {
        Scope (_SB.PR00)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Return (PMPM (Arg0, Arg1, Arg2, Arg3))
            }
        }
    }
}
