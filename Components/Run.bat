@echo off

set RUN_MODULE_PATH=%~dp0Run_modules

cls
echo  ==================================== Running ======================================
echo.
echo Now running OpenDisc making procedure.
echo.

:: Step 1: Check necessary files
echo ===== Step 1: Check necessary files
call %RUN_MODULE_PATH%\check_necessary_files.bat

:: Step 2: Download files
echo ===== Step 2: Download files
call %RUN_MODULE_PATH%\download_files.bat

:: Step 3: Pack files
echo ===== Step 3: Pack files
call %RUN_MODULE_PATH%\pack_iso.bat
pause
