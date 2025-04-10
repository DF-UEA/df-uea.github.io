# Remove Desktop shortcut

Remove-Item "C:\Users\Public\Desktop\Workrave.lnk" -Force -ErrorAction SilentlyContinue

# Remove Start Menu shortcuts

Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Workrave\Uninstall.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Workrave\License.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Workrave\News.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Workrave\Read me.lnk' -Force -ErrorAction SilentlyContinue