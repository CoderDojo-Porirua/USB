[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls";
$client = new-object System.Net.WebClient;
Add-Type -AssemblyName System.IO.Compression.FileSystem;

$temp = "$Env:TEMP\CoderDojo";
if (-not (Test-Path $temp)) {
	mkdir $temp;
}
$root = Resolve-Path "$PSScriptRoot\..";
$programs = "$root\Programs";
if (-not (Test-Path $programs)) {
	mkdir $programs;
}

#md "$programs\Putty";
#$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\putty.exe");
#$client.DownloadFile("https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe", "$programs\Putty\puttygen.exe");

if (-not (Test-Path "$programs\VSCode")) {
	$client.DownloadFile("http://go.microsoft.com/fwlink/?Linkid=850641", "$temp\VSCode.zip");
	[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\VSCode.zip", "$programs\VSCode");
}

if (-not (Test-Path "$programs\Git")) {
	$client.DownloadFile("https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/PortableGit-2.21.0-64-bit.7z.exe", "$programs\PortableGit.exe");
	iex "$programs\PortableGit.exe -y";
	Rename-Item "$programs\PortableGit" "Git"
	Remove-Item "$programs\PortableGit.exe";
}

if (-not (Test-Path "$programs\Node")) {
	$client.DownloadFile("https://nodejs.org/dist/v12.2.0/node-v12.2.0-win-x64.zip", "$temp\node.zip");
	[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\node.zip", "$programs");
	Rename-Item "$programs\node-v12.2.0-win-x64" "Node"
}

if (-not (Test-Path "$programs\mongoDB")) {
	$client.DownloadFile("https://fastdl.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-4.0.9.zip", "$temp\mongodb.zip");
	[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\mongodb.zip", "$programs");
	Rename-Item "$programs\mongodb-win32-x86_64-2008plus-ssl-4.0.9" "mongoDB"
}

if (-not (Test-Path "$programs\Caddy")) {
	mkdir "$programs\Caddy";
	$client.DownloadFile("https://caddyserver.com/download/windows/amd64?plugins=http.cache,http.cors,http.expires,http.login,http.minify,http.realip&license=personal&telemetry=off", "$programs\Caddy\caddy.exe");
}

if (-not (Test-Path "$programs\Arduino")) {
	$client.DownloadFile("https://downloads.arduino.cc/arduino-1.8.9-windows.zip", "$temp\arduino.zip");
	[System.IO.Compression.ZipFile]::ExtractToDirectory("$temp\arduino.zip", "$programs");
	Rename-Item "$programs\arduino-1.8.9" "Arduino"
	mkdir "$programs\Arduino\portable";
}

if (-not (Test-Path "$programs\Firefox")) {
	$client.DownloadFile("https://github.com/portapps/firefox-developer-portable/releases/download/67.0b18-9/firefox-developer-portable-win64-67.0b18-9-setup.exe", "$temp\firefox-developer-portable.exe");
	iex "$temp\firefox-developer-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\Firefox""";
}

if (-not (Test-Path "$programs\Kitty")) {
	$client.DownloadFile("https://github.com/portapps/kitty-portable/releases/download/0.70.0.10-1/kitty-portable-win32-0.70.0.10-1-setup.exe", "$temp\kitty-portable.exe");
	iex "$temp\kitty-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\Kitty""";
}

if (-not (Test-Path "$programs\Docker")) {
	$client.DownloadFile("https://github.com/portapps/docker-toolbox-portable/releases/download/18.09.3-5/docker-toolbox-portable-win64-18.09.3-5-setup.exe", "$temp\docker-toolbox-portable.exe");
	iex "$temp\docker-toolbox-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\Docker""";
}

if (-not (Test-Path "$programs\Discord")) {
	$client.DownloadFile("https://github.com/portapps/discord-portable/releases/download/0.0.305-1/discord-portable-win32-0.0.305-1-setup.exe", "$temp\discord-portable.exe");
	iex "$temp\discord-portable.exe /VERYSILENT /NORESTART /CLOSEAPPLICATIONS /NOICONS /DIR=""$programs\Discord""";
}

#Remove-Item –path $temp –recurse;
