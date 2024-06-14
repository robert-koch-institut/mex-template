@echo off

set target=%1

if "%target%"=="install" goto install
echo invalid argument %target%
exit /b 1


:install
@REM install meta requirements system-wide
echo installing requirements
pip --disable-pip-version-check install --force-reinstall -r requirements.txt
if %errorlevel% neq 0 exit /b %errorlevel%
