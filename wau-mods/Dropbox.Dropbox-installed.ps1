# Remove Start Menu shortcuts

Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dropbox\Dropbox Website.URL' -Force -ErrorAction SilentlyContinue

# Remove Dropbox Update Scheduled Tasks - Will rely on WAU keeping up to date

Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineCore" | Unregister-ScheduledTask -Confirm:$false
Get-ScheduledTask -TaskName "DropboxUpdateTaskMachineUA" | Unregister-ScheduledTask -Confirm:$false
