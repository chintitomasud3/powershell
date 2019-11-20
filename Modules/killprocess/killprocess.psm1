function Stop-Processes {
    param(
        [parameter(Mandatory=$true)] $processName,
                                     $timeout = 5
    )
    $processList = Get-Process $processName -ErrorAction SilentlyContinue
    if ($processList) {
        # Try gracefully first
        $processList.CloseMainWindow() | Out-Null

        # Wait until all processes have terminated or until timeout
        for ($i = 0 ; $i -le $timeout; $i ++){
            $AllHaveExited = $True
            $processList | % {
                $process = $_
                If (!$process.HasExited){
                    $AllHaveExited = $False
                }                    
            }
            If ($AllHaveExited){
                Return
            }
            sleep 1
        }
        # Else: kill
        $processList | Stop-Process -Force        
    }
}



function Stop-ProcessesForGame {
   Stop-Processes notepad,chrome,wpscenter,IDMan,IEMonitor,SamsungMagician,AdobeARM,AppMarket,TBSWebRenderer
}

