@ECHO OFF

%MSBuildRoot%\msbuild.exe "runner.msbuild" /t:Build;AfterBuild;Analyze /p:Configuration=Debug;ProjectName=StaticCodeAnalysis;ProjBuildPath="E:\temp\FxCop_withoutprj\Project\StaticCodeAnalysis\bin\Debug";FxCopIgnore="E:\temp\FxCop_withoutprj\Artifacts\Analysis\inc.xml" /l:FileLogger,Microsoft.Build.Engine;logfile=runner.log 
if "%1" NEQ "noprompt" PAUSE 
