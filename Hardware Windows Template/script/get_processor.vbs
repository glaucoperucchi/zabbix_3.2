Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_Processor")

For Each objOperatingSystem in colOperatingSystems
	PRName = objOperatingSystem.Name
	PRPart = objOperatingSystem.DeviceID
	PRCore = objOperatingSystem.NumberOfCores
	PRArc = objOperatingSystem.AddressWidth

	Wscript.echo PRName & " " & PRPart & " Num. Cores: " & PRCore & " Architecture: " & PRArc
Next