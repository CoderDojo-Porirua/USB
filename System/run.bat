set path=%~dp0\..\Programs\PortableGit\cmd;%path%
git config --global user.name "Mark Honeychurch"
git config --global user.email mark@honeychurch.org

%~dp0\..\Programs\node\nodevars.bat

%~dp0\VSCode\Code.exe
