Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# 再起動する
# 手動インストールが必要な手順
# https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
# https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe
# https://download.visualstudio.microsoft.com/download/pr/d30352fe-d4f3-4203-91b9-01a3b66a802e/bb416e6573fa278fec92113abefc58b3/windowsdesktop-runtime-3.1.15-win-x64.exe
# 再起動する
wsl --set-default-version 2
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop install aria2
scoop install git
scoop bucket add extras
scoop install vscode
scoop install powertoys
scoop install windows-terminal
scoop bucket add Sysinternals 'https://github.com/Ash258/Scoop-Sysinternals.git'
scoop install Ctrl2Cap
