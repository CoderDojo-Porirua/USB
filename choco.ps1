Set-ExecutionPolicy Bypass -Scope Process -Force;
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));
Invoke-Expression "C:\ProgramData\chocolatey\choco.exe install -y vscode nodejs yarn putty kitty git firefox-dev FiraCode docker-desktop arduino mongodb discord 7zip";
