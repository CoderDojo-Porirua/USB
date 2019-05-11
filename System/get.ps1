[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls";
$client = new-object System.Net.WebClient;
Add-Type -AssemblyName System.IO.Compression.FileSystem

$temp = "$Env:TEMP\CoderDojo";
md "$temp";
$programs = "$PSScriptRoot\..\Programs";
md "$programs";
$Env:Path += ";$programs"

md "$programs\Putty";
$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\putty.exe");
$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\puttygen.exe");

$client.DownloadFile("http://go.microsoft.com/fwlink/?Linkid=850641", "$temp\VSCode.zip");
[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\VSCode.zip", "$programs\VSCode");

$client.DownloadFile("https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/PortableGit-2.21.0-64-bit.7z.exe", "$programs\PortableGit.exe");
iex "$programs\PortableGit.exe -y";
Remove-Item "$programs\PortableGit.exe";

$client.DownloadFile("https://nodejs.org/dist/v12.2.0/node-v12.2.0-win-x64.zip", "$temp\node.zip");
[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\node.zip", "$programs\node");

md "$programs\portapps";

$client.DownloadFile("https://github.com/portapps/firefox-developer-portable/releases/download/67.0b18-9/firefox-developer-portable-win64-67.0b18-9-setup.exe", "$temp\firefox-developer-portable.exe");
iex "$temp\firefox-developer-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\portapps\firefox-developer-portable""";

#Remove-Item –path $temp –recurse
