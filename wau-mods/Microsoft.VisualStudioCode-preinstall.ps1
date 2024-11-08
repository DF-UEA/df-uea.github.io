#Run PowerShell script block
#$modsScriptBlock = {get-process}

$modsScriptBlock = {
    $checkVSCodeStatus = if ($VSCodeProcess = Get-Process -Name code -EA 0)	{ ($VSCodeProcess.Id | Measure-Object).Count} else { 0 }
	
    if ($checkVSCodeStatus -gt 0) { return 'stopVSCodeUpdate' }
}

if ($modsScriptBlock){
    function Run-ModsScript ($modsScriptBlock) {
        $RunModsScriptResult = Invoke-Command -ScriptBlock $modsScriptBlock
        return $RunModsScriptResult
    }

    $ScriptBlockResult = Run-ModsScript $modsScriptBlock
    if ($ScriptBlockResult -eq 'stopVSCodeUpdate')
    {
        Write-ToLog "VS Code is running. VS Code update is skipped."
        continue
    }
}