@ECHO OFF

%MSBuildRoot%\msbuild.exe "runner.msbuild" /t:Rebuild;AfterBuild /p:ProjectPath="C:\prjs";Configuration=Release;BUILD_NUMBER=1.3.5.7;Dest="c:\buildout"
if "%1" NEQ "noprompt" PAUSE
