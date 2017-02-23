Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colOperatingSystems = objWMIService.ExecQuery("Select * from Win32_NetworkAdapter")

For Each objOperatingSystem in colOperatingSystems
	'SOvER = objOperatingSystem.AdapterType
	If IsNull(objOperatingSystem.AdapterType) then
		wTipo2 = "-"
    else
      wTipo = objOperatingSystem.AdapterType
	  wDesc = objOperatingSystem.Description
	  wMac = objOperatingSystem.MACAddress
	  wconnection = objOperatingSystem.NetConnectionID
	  Wscript.echo "Type: " & wTipo & " Model: " & wDesc & " Mac-adrress: " & wMac & " Ether. Name: " & wconnection
    end if
	
Next