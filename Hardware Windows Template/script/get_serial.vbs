Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")

For Each objOperatingSystem in colOperatingSystems
	SOSER = objOperatingSystem.SerialNumber
	Wscript.echo SOSER 
Next

