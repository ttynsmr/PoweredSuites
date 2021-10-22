@echo off
pushd %~dp0

echo Install Scoop
powershell -NoProfile -ExecutionPolicy Unrestricted .\InstallScoop.ps1

echo Reload vars
resetvars.vbs
call "%TEMP%\resetvars.bat"

echo Install git
powershell -NoProfile -ExecutionPolicy Unrestricted scoop install git

echo Install add extras
powershell -NoProfile -ExecutionPolicy Unrestricted scoop bucket add extras

echo Install gh
powershell -NoProfile -ExecutionPolicy Unrestricted scoop install gh

echo Install vscode
powershell -NoProfile -ExecutionPolicy Unrestricted scoop install vscode

popd