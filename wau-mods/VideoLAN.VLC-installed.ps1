# Remove Start Menu Shortcut
  Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk' -Force -ErrorAction SilentlyContinue

# Create an Updated Start Menu Shortcut
   $s=(New-Object -COM WScript.Shell).CreateShortcut('C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk');
    $s.TargetPath          = 'C:\Program Files\VideoLAN\VLC\vlc.exe';
    $s.Arguments           = '--no-qt-privacy-ask --no-qt-updates-notif';
    $s.IconLocation        = 'C:\Program Files\VideoLAN\VLC\vlc.exe';
    $s.WorkingDirectory    = 'C:\Program Files\VideoLAN\VLC\';
    $s.WindowStyle         = 7;
    $s.Save();

# Remove Desktop shortcut
Remove-Item 'C:\Users\Public\Desktop\VLC media player.lnk' -Force -ErrorAction SilentlyContinue

# Remove Start Menu shortcuts
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\Documentation.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\Release Notes.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VideoLAN Website.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player - reset preferences and cache files.lnk' -Force -ErrorAction SilentlyContinue
Remove-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player skinned.lnk' -Force -ErrorAction SilentlyContinue
