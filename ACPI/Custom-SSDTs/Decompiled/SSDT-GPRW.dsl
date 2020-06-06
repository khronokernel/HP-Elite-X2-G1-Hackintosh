/*
 * Reroutes GPRW calls to fix XHDI wakes
 *
 * Source: 
 *   https://github.com/RehabMan/OS-X-Clover-Laptop-Config/blob/master/hotpatch/SSDT-GPRW.dsl
 *
 * Required patches:
 *   GPRW to XPRW rename 
 */
DefinitionBlock ("", "SSDT", 2, "Khrono", "GPRW", 0x00000000)
{
    External (XPRW, MethodObj)    // 2 Arguments

    Method (GPRW, 2, NotSerialized)
    {
        If ((0x6D == Arg0))
        {
            Return (Package (0x02)
            {
                0x6D, 
                Zero
            })
        }

        If ((0x0D == Arg0))
        {
            Return (Package (0x02)
            {
                0x0D, 
                Zero
            })
        }

        Return (XPRW (Arg0, Arg1))
    }
}

