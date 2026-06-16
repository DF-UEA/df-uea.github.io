remove-item C:\users\Public\Desktop\qgis* -Recurse

# Example: Find folders whose names contain "QGIS" anywhere
try {
    $path = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\"

    # Validate that the path exists
    if (-not (Test-Path -Path $path -PathType Container)) {
        throw "The specified path does not exist or is not a folder."
    }

    # Get directories matching wildcard
    $folders = Get-ChildItem -Path $path -Directory -Filter "QGIS*"

    if ($folders.Count -eq 0) {
        Write-Host "No matching folders found."
    }
    else {
        Write-Host "Matching folders:"
        $folders | ForEach-Object { $short = $_.FullName 
        remove-item $short\setup.lnk }
    }
}
catch {
    Write-Error $_
}
