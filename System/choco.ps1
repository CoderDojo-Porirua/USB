Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
iex "choco install -y vscode nodejs yarn kitty git firefox-dev FiraCode docker-desktop discord 7zip"
