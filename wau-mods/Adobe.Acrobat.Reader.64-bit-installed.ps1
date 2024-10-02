# Remove Desktop shortcut
Remove-Item "C:\Users\Public\Desktop\Adobe Acrobat.lnk" -Force -ErrorAction SilentlyContinue

# Set a couple of Policies to remove annoying features
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name bAcroSuppressUpsell -Value "1" -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name bToggleFTE -Value "1" -PropertyType DWORD -Force | Out-Null