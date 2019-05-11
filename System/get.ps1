[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls";
$client = new-object System.Net.WebClient;
Add-Type -AssemblyName System.IO.Compression.FileSystem

$temp = "$Env:TEMP\CoderDojo";
md "$temp";
$programs = "$PSScriptRoot\..\Programs";
md "$programs";
$Env:Path += ";$programs"

$client.DownloadFile("http://eternallybored.org/misc/wget/1.20.3/64/wget.exe", "$programs\wget.exe");
#iex "wget.exe -nc http://stahlworks.com/dev/unzip.exe -P Programs";
$client.DownloadFile("http://stahlworks.com/dev/unzip.exe", "$programs\unzip.exe");

md "$programs\Putty";
#iex "wget.exe -nc -P $programs\Putty https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe";
#iex "wget.exe -nc -P $programs\Putty https://the.earth.li/~sgtatham/putty/latest/w64/puttygen.exe";
$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\putty.exe");
$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\puttygen.exe");

#iex "wget.exe -nc -O $temp\VSCode.zip http://go.microsoft.com/fwlink/?Linkid=850641";
$client.DownloadFile("http://go.microsoft.com/fwlink/?Linkid=850641", "$temp\VSCode.zip");
#iex "unzip.exe -p $programs\VSCode $temp\VSCode";
[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\VSCode", "$programs\VSCode");
#Remove-Item "$temp\VSCode.zip";

#iex "wget.exe -nc -O $temp\PortableGit.exe https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/PortableGit-2.21.0-64-bit.7z.exe";
$client.DownloadFile("https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/PortableGit-2.21.0-64-bit.7z.exe", "$temp\PortableGit.exe");
#iex "$temp\PortableGit.exe -y -gm2 -InstallPath=""$programs\PortableGit""";
Write-Host "$temp\PortableGit.exe -y -gm2 -InstallPath=""$programs\PortableGit""";
#Remove-Item "$temp\PortableGit.zip";

#iex "wget.exe -nc -O $temp\node.zip https://nodejs.org/dist/v12.2.0/node-v12.2.0-win-x64.zip";
$client.DownloadFile("https://nodejs.org/dist/v12.2.0/node-v12.2.0-win-x64.zip", "$temp\node.zip");
iex "unzip.exe -p $programs\node $temp\node";
#Remove-Item "$temp\node.zip";

md "$programs\portapps";

#iex "wget.exe -nc -O $temp\firefox-developer-portable.exe https://portapps.io/download/firefox-developer-portable-win64-67.0b18-9-setup.exe";
$client.DownloadFile("https://github.com/portapps/firefox-developer-portable/releases/download/67.0b18-9/firefox-developer-portable-win64-67.0b18-9-setup.exe", "$temp\firefox-developer-portable.exe");
iex "$temp\firefox-developer-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\portapps\firefox-developer-portable""";
#Remove-Item "$temp\firefox-developer-portable.exe";
#>
