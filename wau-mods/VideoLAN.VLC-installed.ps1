# Remove Desktop shortcut
Remove-Item "C:\Users\Public\Desktop\VLC media player.lnk" -Force -ErrorAction SilentlyContinue

# Remove Start Menu shortcuts
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\Documentation.lnk" -Force -ErrorAction SilentlyContinue
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\Release Notes.lnk" -Force -ErrorAction SilentlyContinue
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VideoLAN Website.lnk" -Force -ErrorAction SilentlyContinue
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player - reset preferences and cache files.lnk" -Force -ErrorAction SilentlyContinue
Remove-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player skinned.lnk" -Force -ErrorAction SilentlyContinue
