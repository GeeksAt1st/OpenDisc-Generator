@echo off


:_Welcome
:: Empty choice variable
set choose_welcome=

cls
echo  ==================================== Welcome ======================================
echo.
echo This script will help you generate an OpenDisc duplicate.
echo.
echo  * Press [Enter] to begin
echo  * Input [a] to show information of this script
echo  * Input [e] or [q] to quit
echo.
set /p choose_welcome=Please select an option:
if /i "%choose_welcome%"==""  exit /b 1
if /i "%choose_welcome%"=="a" exit /b 2
if /i "%choose_welcome%"=="e" exit /b 3
if /i "%choose_welcome%"=="q" exit /b 3
:: set choose_welcome= :: Will set after jumping to label
goto _Welcome
