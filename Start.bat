@echo off
setlocal enabledelayedexpansion

set COMPONENT_PATH=Components
set ODG_VERSION=0.1

:: Fix console mode
mode con lines=25 cols=85
title OpenDisc Generator %ODG_VERSION%

:: Show welcome messages
:show
call %COMPONENT_PATH%\Welcome.bat
if %errorlevel% equ 1 call %COMPONENT_PATH%\Run.bat
if %errorlevel% equ 2 call %COMPONENT_PATH%\About.bat
if %errorlevel% equ 3 exit 0
goto show

pause
