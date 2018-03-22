Set WshShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(WScript.Arguments(0), 1)
Do Until objFile.AtEndOfStream
    strCharacters = objFile.Read(1)
    WshShell.SendKeys strCharacters
Loop