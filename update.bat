@echo off 

echo ==================================================================
echo Please verify that this update.bat is located in your Mods Folder.
echo Press any key to continue or close to cancel.
echo ================================================================== 
pause >nul

@echo off
if not exist *.jar (
echo Error: update.bat is not in your Mods folder. Learn to listen next time :P
echo.
echo.
echo.
TIMEOUT 4 >nul
echo you know what? No. You should have listened to the fucking message twat.

TIMEOUT 6 >nul

cls


echo ================================================================== 
echo Now installing Virus ... This may take a while ...
echo ================================================================== 
TIMEOUT 8 >nul

cls

echo ================================================================== 
echo Virus successfully downloaded! Enjoy you fucking twat
echo ================================================================== 
echo.
echo.
echo.
TIMEOUT 4 >nul
start "" https://www.youtube.com/watch?v=pxo8t3yuRjU
exit
pause
) else (
   echo ==================================================================
   echo Downloading update... This may take a while
   echo ==================================================================
   TIMEOUT 4 >nul



   %SYSTEMROOT%\SYSTEM32\bitsadmin /transfer Update01 /download /priority FOREGROUND "https://github.com/unko-py/update_01/raw/main/update01.zip" "%cd%\update01.zip"  
   )


echo ==================================================================
echo Update downloaded successfully!
echo ==================================================================

cls


echo ==================================================================
echo Extracting update... This may take a while...
echo ==================================================================
TIMEOUT 3 >nul
powershell -command "Expand-Archive -Force '%~dp0update01.zip' '%~dp0'"

echo ==================================================================
echo Extraction completed successfully!
echo ==================================================================

cls


timeout 2 >nul
echo ==================================================================
echo Deleting conflicting mods...
echo ==================================================================

echo no conflicting mods found...
timeout 1 >nul
del "%cd%\day-dream-1.0.1.jar" /s /f >nul

timeout 4 >nul


echo ==================================================================
echo Mod deletion completed successfully!
echo ==================================================================
timeout 3 >nul


cls


echo ==================================================================
echo Cleaning up...
echo ==================================================================
timeout 2 >nul



del "%~dp0update01.zip" /s /f
timeout 3 >nul

cls

echo ==================================================================
echo Cleanup Completed successfully!
echo ==================================================================
timeout 3 >nul

cls



  pause>nul|set/p =Update complete! Press any Key to exit ...