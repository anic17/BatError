@echo off
set errno=%errorlevel%

if not exist "%~dp0baterror.msg" (
	echo;The system cannot find the file specified: baterror.msg
	exit /b 2
)
for /f "eol=# tokens=2 delims==" %%A in ('findstr /bc:"%errno%" "%~dp0baterror.msg"') do echo;%%A
exit /b %errno%