$Processes = Get-CimInstance -Class win32_process -Filter "name='WINWORD.exe'"
$Processes | Format-Table ProcessName, @{ Label = "Total Running Time"; Expression={(Get-Date) - $_.CreationDate}}