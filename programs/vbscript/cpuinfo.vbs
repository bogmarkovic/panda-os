Set oFSO = CreateObject("Scripting.FileSystemObject")
sFile1 = "MyComputerInfo.txt"
Set oFile1 = oFSO.CreateTextFile(sFile1, 1)
strQuery = "SELECT Family,Manufacturer,NumberOfCores FROM Win32_Processor"
Set colResults = GetObject("winmgmts://./root/cimv2").ExecQuery( strQuery )
oFile1.WriteLine "Processor Information"
oFile1.WriteLine "------"

For Each objResult In colResults
  strResults = "Family:,"+CStr(objResult.Family)
  oFile1.WriteLine strResults
  strResults = "Manufacturer:,"+CStr(objResult.Manufacturer)
  oFile1.WriteLine strResults
  strResults = "Number of Cores:,"+CStr(objResult.NumberOfCores)
  oFile1.WriteLine strResults
Next
oFile1.WriteLine ""
strQuery = "SELECT Description,Status FROM Win32_Battery"
Set colResults = GetObject("winmgmts://./root/cimv2").ExecQuery( strQuery )
oFile1.WriteLine "Battery Information"
oFile1.WriteLine "------"

For Each objResult In colResults
  strResults = "Status:,"+CStr(objResult.Description)
  oFile1.WriteLine strResults
  strResults = "Description:,"+CStr(objResult.Status)
  oFile1.WriteLine strResults
Next
oFile1.WriteLine ""
strQuery = "SELECT Description,Status FROM Win32_Battery"
Set colResults = GetObject("winmgmts://./root/cimv2").ExecQuery( strQuery )
oFile1.WriteLine "Battery Information"
oFile1.WriteLine "------"

For Each objResult In colResults
  strResults = "Status:,"+CStr(objResult.Description)
  oFile1.WriteLine strResults
  strResults = "Description:,"+CStr(objResult.Status)
  oFile1.WriteLine strResults
Next
oFile1.WriteLine ""
strQuery = "Select Name, FreeSpace, Size from Win32_LogicalDisk"
Set colResults = GetObject("winmgmts://./root/cimv2").ExecQuery( strQuery )
oFile1.WriteLine "Disk Information"
oFile1.WriteLine "------"

'Identify the Logical Disk Space
For Each objResult In colResults
  strResults = "Name:,"+CStr(objResult.Name)
  oFile1.WriteLine strResults
  strResults = "Free Space:,"+CStr(objResult.FreeSpace)
  oFile1.WriteLine strResults
  strResults = "Disk Size:,"+CStr(objResult.Size)
  oFile1.WriteLine strResults
Next
oFile1.Close

Set oFile1 = Nothing
set colResults = Nothing
strResults = ""