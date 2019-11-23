$TempFileLocation = "C:\Users\Masudur\AppData\Local\Temp\*"
$TempFile = Get-ChildItem $TempFileLocation -Recurse
$TempFileCount = ($TempFile).count

if($TempFileCount -eq "0") { 
Write-Host "There are no files in the folder $TempFileLocation" -     ForegroundColor Green
}
Else {
$TempFile | Remove-Item -Confirm:$false -Recurse -Force -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
Write-Host "Cleared $TempFileCount files in the folder $TempFileLocation" -ForegroundColor Green
} 