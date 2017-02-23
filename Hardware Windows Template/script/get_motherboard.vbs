Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_BaseBoard")

For Each objOperatingSystem in colOperatingSystems
	HWMan = objOperatingSystem.Manufacturer
	HWProd = objOperatingSystem.Product
	
	Wscript.echo HWMan & " - " & HWProd
Next