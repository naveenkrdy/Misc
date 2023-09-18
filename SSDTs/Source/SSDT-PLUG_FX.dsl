

DefinitionBlock ("", "SSDT", 2, "XLNC", "PLUGFX", 0x00005000)
{
    External (_PR_.P001, ProcessorObj)

    If (CondRefOf (_PR.P001))
    {
        Scope (_PR.P001)
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
        }
    }
}