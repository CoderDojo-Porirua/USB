$root = Resolve-Path "$PSScriptRoot\..";
$programs = "$root\Programs";

$config = Import-LocalizedData -BaseDirectory $root -FileName "config.psd1";

$Env:Path += ";$programs\Git\cmd";
Invoke-Expression "$programs\Git\cmd\git.exe config --global user.name ""$config.Name""";
Invoke-Expression "$programs\Git\cmd\git.exe config --global user.email $config.Email";

Invoke-Expression "$programs\Node\nodevars.bat";

Invoke-Expression "$programs\VSCode\Code.exe";

#Write-Host $config.Name
