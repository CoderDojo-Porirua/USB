$root = Resolve-Path "$PSScriptRoot\..";
$programs = "$root\Programs";

$config = Import-LocalizedData -BaseDirectory $root -FileName "config.psd1";

$Env:Path += ";$programs\Git\cmd";
iex "$programs\Git\cmd\git.exe config --global user.name ""$config.Name""";
iex "$programs\Git\cmd\git.exe config --global user.email $config.Email";

iex "$programs\Node\nodevars.bat";

iex "$programs\VSCode\Code.exe";

#Write-Host $config.Name
