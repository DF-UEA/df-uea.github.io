Add-Content "$env:programfiles\R\Rwinget\library\base\R\RProfile" -value "#UEA Library Appsense Setup Tag"  
if (Test-Path "C:\Program Files\UEARTeachingLibUpdater\RTeachingLibUpdate.R") {
    Start-Process "c:\Program Files\R\Rwinget\bin\x64\Rscript.exe" -ArgumentList '"C:\Program Files\UEARTeachingLibUpdater\RTeachingLibUpdate.R"' -Wait -WindowStyle Hidden
}else{}
