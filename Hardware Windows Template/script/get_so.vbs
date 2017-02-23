Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")

For Each objOperatingSystem in colOperatingSystems
	SOvER = objOperatingSystem.Caption
	Wscript.echo SOvER 
Next

