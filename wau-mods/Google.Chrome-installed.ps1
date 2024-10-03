#region Remove Desktop shortcut
## Remove existing Desktop shortcut
$ErrorActionPreference = 'Stop'
if (Test-Path -Path "$($env:PUBLIC)\desktop\Google Chrome.lnk") {
    Remove-Item -Path "$($env:PUBLIC)\desktop\Google Chrome.lnk"
}

## Prevent creation of the Desktop shortcut
$InstallLocation = Split-Path ((Get-ItemProperty -Path "HKLM:\SOFTWARE\Classes\ChromeHTML\shell\open\command" -Name "(Default)")."(Default)").Split("--")[0].Trim('"',' ') -Parent
if (Test-Path -Path "$($InstallLocation)\initial_preferences") {
    $PrefFile = "$($InstallLocation)\initial_preferences"
}
elseif (Test-Path -Path "$($InstallLocation)\master_preferences") {
    $PrefFile = "$($InstallLocation)\master_preferences"
}
if (Test-Path -Path "$PrefFile" -PathType Leaf) {
    try {
	    $json = Get-Content $PrefFile | ConvertFrom-Json
	    If ($json) {
    	    If ($json.distribution -ne $null) {
        	    $json.distribution | Add-Member -Name "do_not_create_desktop_shortcut" -Value $true -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "do_not_create_any_shortcuts" -Value $true -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "do_not_create_taskbar_shortcut" -Value $true -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "create_all_shortcuts" -Value $false -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "skip_first_run_ui" -Value $true -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "show_welcome_page" -Value $false -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "import_search_engine" -Value $false -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "import_history" -Value $false -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "do_not_launch_chrome" -Value $true -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "make_chrome_default" -Value $false -MemberType NoteProperty -Force
				$json.distribution | Add-Member -Name "system_level" -Value $true -MemberType NoteProperty -Force
    	    }
    	    Else {
        	    $json | Add-Member -Name "distribution" -Value @{"do_not_create_desktop_shortcut"=$true} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"do_not_create_any_shortcuts"=$true} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"do_not_create_taskbar_shortcut"=$true} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"create_all_shortcuts"=$false} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"skip_first_run_ui"=$true} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"show_welcome_page"=$false} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"import_search_engine"=$false} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"import_history"=$false} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"do_not_launch_chrome"=$true} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"make_chrome_default"=$false} -MemberType NoteProperty -Force
				$json | Add-Member -Name "distribution" -Value @{"system_level"=$true} -MemberType NoteProperty -Force
    	    }
    	    $json | ConvertTo-Json -Depth 100 | Out-File -FilePath $PrefFile -Encoding ASCII
	    }
    }
    catch {

	}
}
#endregion

# please sign me!