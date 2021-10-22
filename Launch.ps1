Get-Content .\Templates\PoweredSuites.wsb.template |
 ForEach-Object { $_ -replace "%CurrentDirectory%", "$(Get-Location)" } |
 Set-Content .\PoweredSuites.wsb

Invoke-Item -Path .\PoweredSuites.wsb
