Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_BIOS")

For Each objOperatingSystem in colOperatingSystems
	BIName = objOperatingSystem.Name
	BISerNum = objOperatingSystem.SerialNumber
	BIDt = (Mid(objOperatingSystem.ReleaseDate, 7, 2)) & "/" & (Mid(objOperatingSystem.ReleaseDate, 5, 2)) & "/" & (Left(objOperatingSystem.ReleaseDate, 4))
	BISm = objOperatingSystem.SMBIOSBIOSVersion
	BIVer = objOperatingSystem.Version

	Wscript.echo "Model: " & BIName & " Tag: " & BISerNum & " Release: " & BIDt & " SMBIOS Version: " & BISm & " BIOS Version: " & BIVer
Next