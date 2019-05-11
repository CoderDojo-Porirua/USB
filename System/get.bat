mkdir Programs
wget -P Programs 
mkdir Programs\Putty
wget -P Programs\Putty https://the.earth.li/~sgtatham/putty/latest/w64/putty.exe
wget -P Programs\Putty https://the.earth.li/~sgtatham/putty/latest/w64/puttygen.exe
wget -O %TEMP%\VSCode.zip https://go.microsoft.com/fwlink/?Linkid=850641
Programs\unzip.exe %TEMP%\VSCode.zip -p Programs\VSCode
del %TEMP%\VSCode.zip
wget -O %TEMP%\PortableGit.exe https://github.com/git-for-windows/git/releases/download/v2.21.0.windows.1/PortableGit-2.21.0-64-bit.7z.exe
Programs\unzip.exe %TEMP%\PortableGit.zip -p Programs\PortableGit
del %TEMP%\PortableGit.zip
wget -O %TEMP%\node.zip https://nodejs.org/dist/v12.2.0/node-v12.2.0-win-x64.zip
Programs\unzip.exe %TEMP%\node.zip -p Programs\node
del %TEMP%\node.zip
