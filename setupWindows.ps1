# 手動インストールが必要な手順
# https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi <- インストールする
# https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exeEnable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
# https://github.com/microsoft/PowerToys/releases/download/v0.25.0/PowerToysSetup-0.25.0-x64.exe
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop install aria2
scoop install git
scoop bucket add extras
scoop install vscode