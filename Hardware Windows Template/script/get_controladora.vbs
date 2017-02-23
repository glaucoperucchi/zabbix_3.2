Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_SCSIController")

For Each objOperatingSystem in colOperatingSystems
	'SOvER = objOperatingSystem.AdapterType
	If IsNull(objOperatingSystem.Name) then
		wTipo2 = "-"
    else
      wName = objOperatingSystem.Name
	  wDrive = objOperatingSystem.DriverName
	  wManu = objOperatingSystem.Manufacturer
	  Wscript.echo wName & " " & wDrive & " " & wManu
    end if
	
Next