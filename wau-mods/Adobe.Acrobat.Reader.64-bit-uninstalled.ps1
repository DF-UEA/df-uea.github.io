# Remove a couple of Policies

Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name "bAcroSuppressUpsell" -Force -ErrorAction SilentlyContinue
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name "bToggleFTE" -Force -ErrorAction SilentlyContinue