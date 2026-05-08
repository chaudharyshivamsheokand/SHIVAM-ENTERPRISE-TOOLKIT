@chcp 65001 >nul 2>&1
@echo off
:: ============================================================
:: SHIVAM ENTERPRISE TOOLKIT
:: Developer: Chaudhary Shivam Sheokand (चौधरी शिवम श्योकंद)
:: GitHub: github.com/chaudharyshivamsheokand
:: Instagram: @ig.developershivam
:: YouTube: TechEdu-X
:: Version: 3.0 Enterprise
:: Supports: Windows 10 / Windows 11
:: ============================================================

:: --- Enable Delayed Expansion ---
setlocal EnableDelayedExpansion

:: --- Set Console Size ---
mode con: cols=160 lines=50
powershell -Command "$Host.UI.RawUI.BufferSize = New-Object Management.Automation.Host.Size(160,500)" >nul 2>&1

:: --- Auto Request Administrator Privileges ---
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: --- Set Script Directory ---
set "SCRIPTDIR=%~dp0"
set "LOGDIR=%SCRIPTDIR%Logs"
set "REPORTDIR=%SCRIPTDIR%Reports"
set "BACKUPDIR=%SCRIPTDIR%Backups"
set "LOGFILE=%LOGDIR%\toolkit.log"

:: --- Create Required Folders ---
if not exist "%LOGDIR%" mkdir "%LOGDIR%"
if not exist "%REPORTDIR%" mkdir "%REPORTDIR%"
if not exist "%BACKUPDIR%" mkdir "%BACKUPDIR%"

:: --- Initialize Log ---
echo [%date% %time%] SHIVAM ENTERPRISE TOOLKIT Started >> "%LOGFILE%"

:: --- Splash Screen ---
:SPLASH
cls
color 0A
echo.
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                                                                                          █
echo  █    ███████╗██╗  ██╗██╗██╗   ██╗ █████╗ ███╗   ███╗    ███████╗███╗   ██╗████████╗███████╗██████╗ ██████╗ ██████╗ ██╗███████╗███████╗                   █
echo  █    ██╔════╝██║  ██║██║██║   ██║██╔══██╗████╗ ████║    ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔══██╗██║██╔════╝██╔════╝                   █
echo  █    ███████╗███████║██║██║   ██║███████║██╔████╔██║    █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝██████╔╝██████╔╝██║███████╗█████╗                     █
echo  █    ╚════██║██╔══██║██║╚██╗ ██╔╝██╔══██║██║╚██╔╝██║    ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗██╔═══╝ ██╔══██╗██║╚════██║██╔══╝                    █
echo  █    ███████║██║  ██║██║ ╚████╔╝ ██║  ██║██║ ╚═╝ ██║    ███████╗██║ ╚████║   ██║   ███████╗██║  ██║██║     ██║  ██║██║███████║███████╗                   █
echo  █    ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═╝  ╚═╝╚═╝     ╚═╝    ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚══════╝                   █
echo  █                                                                                                                                                          █
echo  █                        ████████╗ ██████╗  ██████╗ ██╗     ██╗  ██╗██╗████████╗                                                                         █
echo  █                           ██╔══╝██╔═══██╗██╔═══██╗██║     ██║ ██╔╝██║╚══██╔══╝                                                                         █
echo  █                           ██║   ██║   ██║██║   ██║██║     █████╔╝ ██║   ██║                                                                             █
echo  █                           ██║   ██║   ██║██║   ██║██║     ██╔═██╗ ██║   ██║                                                                             █
echo  █                           ██║   ╚██████╔╝╚██████╔╝███████╗██║  ██╗██║   ██║                                                                             █
echo  █                           ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝   ╚═╝                                                                             █
echo  █                                                                                                                                                          █
echo  █                          ENTERPRISE TECHNICIAN SUITE  v3.0                                                                                              █
echo  █                Developer: चौधरी शिवम श्योकंद  ^|  GitHub: github.com/chaudharyshivamsheokand                                                            █
echo  █                Instagram: @ig.developershivam  ^|  YouTube: TechEdu-X                                                                                   █
echo  ████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo                                             [ Initializing Enterprise Modules... ]
timeout /t 2 >nul
echo                                             [ Loading System Interface...        ]
timeout /t 1 >nul
echo                                             [ All Systems Ready. Launching...    ]
timeout /t 1 >nul
goto MAIN_MENU

:: ============================================================
:: MAIN MENU
:: ============================================================
:MAIN_MENU
cls
color 0A
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                          ★  MAIN MENU  ★  PAGE 1 OF 2                                                                                ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [01]  AUTO REPAIR TOOLKIT                           ║  [07]  SECURITY TOOLKIT                                                                       ║
echo  ║  [02]  DEEP CLEANER                                  ║  [08]  BACKUP TOOLKIT                                                                         ║
echo  ║  [03]  DRIVER TOOLKIT                                ║  [09]  HARDWARE TOOLKIT                                                                        ║
echo  ║  [04]  GAMING TOOLKIT                                ║  [10]  WINDOWS MANAGEMENT                                                                      ║
echo  ║  [05]  NETWORK TOOLKIT                               ║  [11]  APP INSTALLER TOOLKIT                                                                   ║
echo  ║  [06]  DISM TOOLKIT                                  ║  [12]  MORE TOOLS ^(Page 2^)                                                                   ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [N] Next Page   [X] Exit Toolkit                                                                                                                     ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if /i "!CHOICE!"=="01" goto REPAIR_MENU
if /i "!CHOICE!"=="1"  goto REPAIR_MENU
if /i "!CHOICE!"=="02" goto CLEANER_MENU
if /i "!CHOICE!"=="2"  goto CLEANER_MENU
if /i "!CHOICE!"=="03" goto DRIVER_MENU
if /i "!CHOICE!"=="3"  goto DRIVER_MENU
if /i "!CHOICE!"=="04" goto GAMING_MENU
if /i "!CHOICE!"=="4"  goto GAMING_MENU
if /i "!CHOICE!"=="05" goto NETWORK_MENU
if /i "!CHOICE!"=="5"  goto NETWORK_MENU
if /i "!CHOICE!"=="06" goto DISM_MENU
if /i "!CHOICE!"=="6"  goto DISM_MENU
if /i "!CHOICE!"=="07" goto SECURITY_MENU
if /i "!CHOICE!"=="7"  goto SECURITY_MENU
if /i "!CHOICE!"=="08" goto BACKUP_MENU
if /i "!CHOICE!"=="8"  goto BACKUP_MENU
if /i "!CHOICE!"=="09" goto HARDWARE_MENU
if /i "!CHOICE!"=="9"  goto HARDWARE_MENU
if /i "!CHOICE!"=="10" goto WINMGMT_MENU
if /i "!CHOICE!"=="11" goto APPINSTALL_MENU
if /i "!CHOICE!"=="12" goto MAIN_MENU2
if /i "!CHOICE!"=="N"  goto MAIN_MENU2
if /i "!CHOICE!"=="X"  goto EXIT_TOOLKIT
goto MAIN_MENU

:MAIN_MENU2
cls
color 0A
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                          ★  MAIN MENU  ★  PAGE 2 OF 2                                                                                ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [13]  WINPE TOOLKIT                                 ║  [17]  ADVANCED TOOLS                                                                         ║
echo  ║  [14]  AI DIAGNOSTICS                                ║  [18]  BATTERY REPORT                                                                         ║
echo  ║  [15]  SSD OPTIMIZER                                 ║  [19]  BENCHMARK TOOLKIT                                                                       ║
echo  ║  [16]  PRIVACY TOOLKIT                               ║  [20]  FIREWALL TOOLKIT                                                                        ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [B] Back (Page 1)   [H] Home   [X] Exit Toolkit                                                                                                      ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if /i "!CHOICE!"=="13" goto WINPE_MENU
if /i "!CHOICE!"=="14" goto AI_DIAG_MENU
if /i "!CHOICE!"=="15" goto SSD_MENU
if /i "!CHOICE!"=="16" goto PRIVACY_MENU
if /i "!CHOICE!"=="17" goto ADVANCED_MENU
if /i "!CHOICE!"=="18" goto BATTERY_REPORT
if /i "!CHOICE!"=="19" goto BENCHMARK_MENU
if /i "!CHOICE!"=="20" goto FIREWALL_MENU
if /i "!CHOICE!"=="B"  goto MAIN_MENU
if /i "!CHOICE!"=="H"  goto MAIN_MENU
if /i "!CHOICE!"=="X"  goto EXIT_TOOLKIT
goto MAIN_MENU2

:: ============================================================
:: HEADER SUBROUTINE
:: ============================================================
:DRAW_HEADER
for /f "tokens=1-2 delims= " %%a in ('date /t') do set "SYSDATE=%%a %%b"
for /f "tokens=1" %%a in ('time /t') do set "SYSTIME=%%a"
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║  SHIVAM ENTERPRISE TOOLKIT  ^|  Dev: चौधरी शिवम श्योकंद  ^|  GitHub: github.com/chaudharyshivamsheokand  ^|  YT: TechEdu-X  ^|  IG: @ig.developershivam  ║
echo  ╠══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  User: %USERNAME%   ^|  PC: %COMPUTERNAME%   ^|  Date: %date%   ^|  Time: %time%
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
goto :eof

:: ============================================================
:: AUTO REPAIR TOOLKIT
:: ============================================================
:REPAIR_MENU
cls
color 0B
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  AUTO REPAIR TOOLKIT  ★                                                                                     ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  SFC /scannow (System File Checker)             ║  [4]  Winsock Reset                                                                           ║
echo  ║  [2]  DISM RestoreHealth                             ║  [5]  TCP/IP Reset                                                                            ║
echo  ║  [3]  Check Disk (chkdsk C:)                         ║  [6]  DNS Flush                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto REPAIR_SFC
if "!CHOICE!"=="2" goto REPAIR_DISM
if "!CHOICE!"=="3" goto REPAIR_CHKDSK
if "!CHOICE!"=="4" goto REPAIR_WINSOCK
if "!CHOICE!"=="5" goto REPAIR_TCPIP
if "!CHOICE!"=="6" goto REPAIR_DNS
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto REPAIR_MENU

:REPAIR_SFC
cls
echo  [*] Running System File Checker (sfc /scannow)...
echo  [%date% %time%] SFC Scan started >> "%LOGFILE%"
sfc /scannow
echo  [%date% %time%] SFC Scan completed >> "%LOGFILE%"
echo.
echo  [+] SFC scan complete. Check CBS.log for details.
pause
goto REPAIR_MENU

:REPAIR_DISM
cls
echo  [*] Running DISM RestoreHealth...
echo  [%date% %time%] DISM RestoreHealth started >> "%LOGFILE%"
DISM /Online /Cleanup-Image /RestoreHealth
echo  [%date% %time%] DISM RestoreHealth completed >> "%LOGFILE%"
echo.
echo  [+] DISM restore complete.
pause
goto REPAIR_MENU

:REPAIR_CHKDSK
cls
echo  [*] Scheduling chkdsk on C: drive (runs on next reboot)...
echo  [%date% %time%] chkdsk scheduled >> "%LOGFILE%"
echo Y | chkdsk C: /f /r
echo  [+] chkdsk scheduled for next reboot.
pause
goto REPAIR_MENU

:REPAIR_WINSOCK
cls
echo  [*] Resetting Winsock...
echo  [%date% %time%] Winsock reset >> "%LOGFILE%"
netsh winsock reset
echo  [+] Winsock reset complete. Restart recommended.
pause
goto REPAIR_MENU

:REPAIR_TCPIP
cls
echo  [*] Resetting TCP/IP stack...
echo  [%date% %time%] TCP/IP reset >> "%LOGFILE%"
netsh int ip reset
echo  [+] TCP/IP reset complete. Restart recommended.
pause
goto REPAIR_MENU

:REPAIR_DNS
cls
echo  [*] Flushing DNS cache...
echo  [%date% %time%] DNS flush >> "%LOGFILE%"
ipconfig /flushdns
echo  [+] DNS cache flushed.
pause
goto REPAIR_MENU

:: ============================================================
:: DEEP CLEANER
:: ============================================================
:CLEANER_MENU
cls
color 0C
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  DEEP CLEANER  ★                                                                                            ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  User Temp Cleanup (%TEMP%)                      ║  [4]  Recycle Bin Cleanup                                                                     ║
echo  ║  [2]  Windows Temp Cleanup (C:\Windows\Temp)          ║  [5]  Browser Cache Cleanup                                                                   ║
echo  ║  [3]  Prefetch Cleanup                               ║  [6]  Windows Update Cache Cleanup                                                             ║
echo  ║  [7]  Run All Cleaners                               ║                                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto CLEAN_USERTEMP
if "!CHOICE!"=="2" goto CLEAN_WINTEMP
if "!CHOICE!"=="3" goto CLEAN_PREFETCH
if "!CHOICE!"=="4" goto CLEAN_RECYCLE
if "!CHOICE!"=="5" goto CLEAN_BROWSER
if "!CHOICE!"=="6" goto CLEAN_WUPDATE
if "!CHOICE!"=="7" goto CLEAN_ALL
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto CLEANER_MENU

:CLEAN_USERTEMP
cls
echo  [*] Cleaning User Temp folder...
echo  [%date% %time%] User Temp cleanup started >> "%LOGFILE%"
del /s /f /q "%TEMP%\*.*" >nul 2>&1
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1
echo  [+] User Temp cleaned.
echo  [%date% %time%] User Temp cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_WINTEMP
cls
echo  [*] Cleaning Windows Temp folder...
echo  [%date% %time%] Windows Temp cleanup started >> "%LOGFILE%"
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1
echo  [+] Windows Temp cleaned.
echo  [%date% %time%] Windows Temp cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_PREFETCH
cls
echo  [*] Cleaning Prefetch folder...
echo  [%date% %time%] Prefetch cleanup started >> "%LOGFILE%"
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
echo  [+] Prefetch cleaned.
echo  [%date% %time%] Prefetch cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_RECYCLE
cls
echo  [*] Emptying Recycle Bin...
echo  [%date% %time%] Recycle Bin cleanup started >> "%LOGFILE%"
powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
echo  [+] Recycle Bin emptied.
echo  [%date% %time%] Recycle Bin cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_BROWSER
cls
echo  [*] Cleaning Browser Caches...
echo  [%date% %time%] Browser cache cleanup started >> "%LOGFILE%"
:: Chrome Cache
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
    echo  [+] Chrome cache cleared.
)
:: Edge Cache
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
    echo  [+] Edge cache cleared.
)
:: Firefox Cache
if exist "%LOCALAPPDATA%\Mozilla\Firefox\Profiles" (
    for /d %%P in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do (
        if exist "%%P\cache2" del /s /f /q "%%P\cache2\*.*" >nul 2>&1
    )
    echo  [+] Firefox cache cleared.
)
echo  [%date% %time%] Browser cache cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_WUPDATE
cls
echo  [*] Cleaning Windows Update Cache...
echo  [%date% %time%] WU cache cleanup started >> "%LOGFILE%"
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\SoftwareDistribution\Download\*") do rd /s /q "%%i" >nul 2>&1
net start wuauserv >nul 2>&1
net start bits >nul 2>&1
echo  [+] Windows Update cache cleaned.
echo  [%date% %time%] WU cache cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_ALL
cls
echo  [*] Running ALL cleaners...
call :DO_CLEAN_ALL
echo  [+] All cleaning tasks complete.
pause
goto CLEANER_MENU

:DO_CLEAN_ALL
del /s /f /q "%TEMP%\*.*" >nul 2>&1
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
net start wuauserv >nul 2>&1
net start bits >nul 2>&1
echo  [%date% %time%] All cleaners ran >> "%LOGFILE%"
goto :eof

:: ============================================================
:: DRIVER TOOLKIT
:: ============================================================
:DRIVER_MENU
cls
color 0D
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  DRIVER TOOLKIT  ★                                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Install Driver (pnputil)                       ║  [3]  Scan for Hardware Changes                                                               ║
echo  ║  [2]  Export All Drivers                             ║  [4]  Open Device Manager                                                                     ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto DRIVER_INSTALL
if "!CHOICE!"=="2" goto DRIVER_EXPORT
if "!CHOICE!"=="3" goto DRIVER_SCAN
if "!CHOICE!"=="4" goto DRIVER_DEVMGR
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto DRIVER_MENU

:DRIVER_INSTALL
cls
echo  [*] Driver Install via pnputil
set /p "DRVPATH=  Enter full path to .inf driver file: "
if not exist "!DRVPATH!" (
    echo  [!] File not found: !DRVPATH!
    pause
    goto DRIVER_MENU
)
pnputil /add-driver "!DRVPATH!" /install
echo  [%date% %time%] Driver installed: !DRVPATH! >> "%LOGFILE%"
pause
goto DRIVER_MENU

:DRIVER_EXPORT
cls
echo  [*] Exporting all drivers to %BACKUPDIR%\Drivers...
if not exist "%BACKUPDIR%\Drivers" mkdir "%BACKUPDIR%\Drivers"
pnputil /export-driver * "%BACKUPDIR%\Drivers"
echo  [%date% %time%] Drivers exported to %BACKUPDIR%\Drivers >> "%LOGFILE%"
echo  [+] Drivers exported to: %BACKUPDIR%\Drivers
pause
goto DRIVER_MENU

:DRIVER_SCAN
cls
echo  [*] Scanning for hardware changes...
pnputil /scan-devices
echo  [%date% %time%] Hardware scan done >> "%LOGFILE%"
pause
goto DRIVER_MENU

:DRIVER_DEVMGR
cls
echo  [*] Opening Device Manager...
start devmgmt.msc
pause
goto DRIVER_MENU

:: ============================================================
:: GAMING TOOLKIT
:: ============================================================
:GAMING_MENU
cls
color 0E
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  GAMING TOOLKIT  ★                                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Enable Ultimate Performance Mode               ║  [3]  Enable GPU Scheduling (WDDM 2.7+)                                                       ║
echo  ║  [2]  Disable Game DVR / Xbox DVR                   ║  [4]  Apply Network Gaming Tweaks                                                             ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto GAMING_PERF
if "!CHOICE!"=="2" goto GAMING_DVR
if "!CHOICE!"=="3" goto GAMING_GPU
if "!CHOICE!"=="4" goto GAMING_NET
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto GAMING_MENU

:GAMING_PERF
cls
echo  [*] Enabling Ultimate Performance power plan...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
echo  [+] Ultimate Performance mode activated.
echo  [%date% %time%] Ultimate Performance enabled >> "%LOGFILE%"
pause
goto GAMING_MENU

:GAMING_DVR
cls
echo  [*] Disabling Game DVR...
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f >nul 2>&1
echo  [+] Game DVR disabled.
echo  [%date% %time%] Game DVR disabled >> "%LOGFILE%"
pause
goto GAMING_MENU

:GAMING_GPU
cls
echo  [*] Enabling Hardware-Accelerated GPU Scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
echo  [+] GPU Scheduling enabled. Restart required.
echo  [%date% %time%] GPU Scheduling enabled >> "%LOGFILE%"
pause
goto GAMING_MENU

:GAMING_NET
cls
echo  [*] Applying Network Gaming Tweaks...
:: Disable Nagle's algorithm for lower latency
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d 2710 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
echo  [+] Network gaming tweaks applied.
echo  [%date% %time%] Gaming network tweaks applied >> "%LOGFILE%"
pause
goto GAMING_MENU

:: ============================================================
:: NETWORK TOOLKIT
:: ============================================================
:NETWORK_MENU
cls
color 09
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  NETWORK TOOLKIT  ★                                                                                         ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Winsock Reset                                  ║  [4]  Renew IP Address                                                                        ║
echo  ║  [2]  IP Stack Reset                                 ║  [5]  Wi-Fi Repair                                                                            ║
echo  ║  [3]  DNS Optimization (Google DNS)                  ║  [6]  Show Network Info                                                                       ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto NET_WINSOCK
if "!CHOICE!"=="2" goto NET_IPRESET
if "!CHOICE!"=="3" goto NET_DNS
if "!CHOICE!"=="4" goto NET_RENEW
if "!CHOICE!"=="5" goto NET_WIFI
if "!CHOICE!"=="6" goto NET_INFO
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto NETWORK_MENU

:NET_WINSOCK
cls
echo  [*] Resetting Winsock...
netsh winsock reset
ipconfig /flushdns
echo  [+] Winsock reset. Restart recommended.
echo  [%date% %time%] Winsock reset >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_IPRESET
cls
echo  [*] Resetting IP stack...
netsh int ip reset
netsh int ipv6 reset
echo  [+] IP stack reset. Restart recommended.
echo  [%date% %time%] IP stack reset >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_DNS
cls
echo  [*] Setting DNS to Google (8.8.8.8 / 8.8.4.4)...
for /f "tokens=3*" %%a in ('netsh interface show interface ^| findstr /i "connected"') do (
    netsh interface ip set dns name="%%b" static 8.8.8.8 >nul 2>&1
    netsh interface ip add dns name="%%b" 8.8.4.4 index=2 >nul 2>&1
)
ipconfig /flushdns
echo  [+] DNS set to Google. DNS cache flushed.
echo  [%date% %time%] DNS set to Google >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_RENEW
cls
echo  [*] Releasing and renewing IP...
ipconfig /release
ipconfig /renew
echo  [+] IP renewed.
echo  [%date% %time%] IP renewed >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_WIFI
cls
echo  [*] Repairing Wi-Fi adapter...
netsh winsock reset >nul 2>&1
netsh int ip reset >nul 2>&1
ipconfig /flushdns >nul 2>&1
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
echo  [+] Wi-Fi repair complete.
echo  [%date% %time%] Wi-Fi repair done >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_INFO
cls
echo  [*] Network Information:
echo.
ipconfig /all
echo.
echo  [%date% %time%] Network info displayed >> "%LOGFILE%"
pause
goto NETWORK_MENU

:: ============================================================
:: DISM TOOLKIT
:: ============================================================
:DISM_MENU
cls
color 06
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  DISM TOOLKIT  ★                                                                                            ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  DISM CheckHealth                               ║  [3]  DISM RestoreHealth                                                                      ║
echo  ║  [2]  DISM ScanHealth                                ║                                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto DISM_CHECK
if "!CHOICE!"=="2" goto DISM_SCAN
if "!CHOICE!"=="3" goto DISM_RESTORE
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto DISM_MENU

:DISM_CHECK
cls
echo  [*] DISM CheckHealth...
DISM /Online /Cleanup-Image /CheckHealth
echo  [%date% %time%] DISM CheckHealth done >> "%LOGFILE%"
pause
goto DISM_MENU

:DISM_SCAN
cls
echo  [*] DISM ScanHealth (may take several minutes)...
DISM /Online /Cleanup-Image /ScanHealth
echo  [%date% %time%] DISM ScanHealth done >> "%LOGFILE%"
pause
goto DISM_MENU

:DISM_RESTORE
cls
echo  [*] DISM RestoreHealth (may take 10-30 minutes)...
DISM /Online /Cleanup-Image /RestoreHealth
echo  [%date% %time%] DISM RestoreHealth done >> "%LOGFILE%"
pause
goto DISM_MENU

:: ============================================================
:: SECURITY TOOLKIT
:: ============================================================
:SECURITY_MENU
cls
color 0C
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  SECURITY TOOLKIT  ★                                                                                        ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Update Windows Defender                        ║  [3]  Export Firewall Rules                                                                   ║
echo  ║  [2]  Defender Quick Scan                            ║  [4]  Check BitLocker Status                                                                  ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto SEC_DEFUPDATE
if "!CHOICE!"=="2" goto SEC_DEFSCAN
if "!CHOICE!"=="3" goto SEC_FWEXPORT
if "!CHOICE!"=="4" goto SEC_BITLOCKER
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto SECURITY_MENU

:SEC_DEFUPDATE
cls
echo  [*] Updating Windows Defender signatures...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate
echo  [%date% %time%] Defender updated >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_DEFSCAN
cls
echo  [*] Running Defender Quick Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo  [%date% %time%] Defender quick scan done >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_FWEXPORT
cls
echo  [*] Exporting Firewall rules to %REPORTDIR%\firewall_rules.wfw ...
netsh advfirewall export "%REPORTDIR%\firewall_rules.wfw"
echo  [+] Firewall rules exported to: %REPORTDIR%\firewall_rules.wfw
echo  [%date% %time%] Firewall exported >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_BITLOCKER
cls
echo  [*] Checking BitLocker status on all drives...
manage-bde -status
echo  [%date% %time%] BitLocker status checked >> "%LOGFILE%"
pause
goto SECURITY_MENU

:: ============================================================
:: BACKUP TOOLKIT
:: ============================================================
:BACKUP_MENU
cls
color 05
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  BACKUP TOOLKIT  ★                                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Backup Registry (Export HKLM)                  ║  [3]  Backup Drivers                                                                          ║
echo  ║  [2]  Create System Restore Point                    ║                                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto BACKUP_REG
if "!CHOICE!"=="2" goto BACKUP_RESTORE
if "!CHOICE!"=="3" goto BACKUP_DRIVERS
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto BACKUP_MENU

:BACKUP_REG
cls
echo  [*] Backing up registry HKLM...
set "REGBACK=%BACKUPDIR%\Registry_HKLM_%date:~-4,4%%date:~-7,2%%date:~-10,2%.reg"
set "REGBACK=!REGBACK: =0!"
set "REGBACK=!REGBACK:/=-!"
reg export HKLM "!REGBACK!" /y
echo  [+] Registry exported to: !REGBACK!
echo  [%date% %time%] Registry backup done >> "%LOGFILE%"
pause
goto BACKUP_MENU

:BACKUP_RESTORE
cls
echo  [*] Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'SHIVAM_ENTERPRISE_TOOLKIT_$(Get-Date -Format yyyyMMdd_HHmmss)' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
echo  [+] Restore point created.
echo  [%date% %time%] Restore point created >> "%LOGFILE%"
pause
goto BACKUP_MENU

:BACKUP_DRIVERS
cls
echo  [*] Backing up all drivers...
if not exist "%BACKUPDIR%\Drivers" mkdir "%BACKUPDIR%\Drivers"
pnputil /export-driver * "%BACKUPDIR%\Drivers"
echo  [+] Drivers backed up to: %BACKUPDIR%\Drivers
echo  [%date% %time%] Driver backup done >> "%LOGFILE%"
pause
goto BACKUP_MENU

:: ============================================================
:: HARDWARE TOOLKIT
:: ============================================================
:HARDWARE_MENU
cls
color 03
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  HARDWARE TOOLKIT  ★                                                                                        ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  CPU Information                                ║  [4]  GPU Information                                                                         ║
echo  ║  [2]  RAM Information                                ║  [5]  Launch DxDiag                                                                           ║
echo  ║  [3]  Disk Information                               ║                                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto HW_CPU
if "!CHOICE!"=="2" goto HW_RAM
if "!CHOICE!"=="3" goto HW_DISK
if "!CHOICE!"=="4" goto HW_GPU
if "!CHOICE!"=="5" goto HW_DXDIAG
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto HARDWARE_MENU

:HW_CPU
cls
echo  [*] CPU Information:
echo.
wmic cpu get Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors, Status /format:list
echo.
echo  [%date% %time%] CPU info displayed >> "%LOGFILE%"
pause
goto HARDWARE_MENU

:HW_RAM
cls
echo  [*] RAM Information:
echo.
wmic memorychip get Capacity, Speed, Manufacturer, MemoryType, FormFactor /format:list
echo.
echo  --- Total Physical Memory ---
wmic computersystem get TotalPhysicalMemory /format:list
echo.
echo  [%date% %time%] RAM info displayed >> "%LOGFILE%"
pause
goto HARDWARE_MENU

:HW_DISK
cls
echo  [*] Disk Information:
echo.
wmic diskdrive get Model, Size, InterfaceType, SerialNumber, Status /format:list
echo.
echo  --- Logical Drives ---
wmic logicaldisk get DeviceID, Size, FreeSpace, FileSystem /format:list
echo.
echo  [%date% %time%] Disk info displayed >> "%LOGFILE%"
pause
goto HARDWARE_MENU

:HW_GPU
cls
echo  [*] GPU Information:
echo.
wmic path win32_VideoController get Name, AdapterRAM, DriverVersion, Status /format:list
echo.
echo  [%date% %time%] GPU info displayed >> "%LOGFILE%"
pause
goto HARDWARE_MENU

:HW_DXDIAG
cls
echo  [*] Launching DxDiag...
start dxdiag
echo  [%date% %time%] DxDiag launched >> "%LOGFILE%"
pause
goto HARDWARE_MENU

:: ============================================================
:: WINDOWS MANAGEMENT
:: ============================================================
:WINMGMT_MENU
cls
color 07
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  WINDOWS MANAGEMENT  ★                                                                                      ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Services Manager                               ║  [4]  Task Scheduler                                                                          ║
echo  ║  [2]  Event Viewer                                   ║  [5]  Group Policy Editor                                                                     ║
echo  ║  [3]  Registry Editor                                ║  [6]  Device Manager                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto WINMGMT_SVC
if "!CHOICE!"=="2" goto WINMGMT_EVT
if "!CHOICE!"=="3" goto WINMGMT_REG
if "!CHOICE!"=="4" goto WINMGMT_TASK
if "!CHOICE!"=="5" goto WINMGMT_GPE
if "!CHOICE!"=="6" goto WINMGMT_DEV
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto WINMGMT_MENU

:WINMGMT_SVC
start services.msc
pause
goto WINMGMT_MENU

:WINMGMT_EVT
start eventvwr.msc
pause
goto WINMGMT_MENU

:WINMGMT_REG
start regedit.exe
pause
goto WINMGMT_MENU

:WINMGMT_TASK
start taskschd.msc
pause
goto WINMGMT_MENU

:WINMGMT_GPE
start gpedit.msc
pause
goto WINMGMT_MENU

:WINMGMT_DEV
start devmgmt.msc
pause
goto WINMGMT_MENU

:: ============================================================
:: APP INSTALLER TOOLKIT
:: ============================================================
:APPINSTALL_MENU
cls
color 0A
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  APP INSTALLER TOOLKIT (winget)  ★                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Install Google Chrome                          ║  [4]  Install Steam                                                                           ║
echo  ║  [2]  Install VLC Media Player                       ║  [5]  Install Notepad++                                                                       ║
echo  ║  [3]  Install 7-Zip                                  ║  [6]  Install All Above                                                                       ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto APP_CHROME
if "!CHOICE!"=="2" goto APP_VLC
if "!CHOICE!"=="3" goto APP_7ZIP
if "!CHOICE!"=="4" goto APP_STEAM
if "!CHOICE!"=="5" goto APP_NOTEPADPP
if "!CHOICE!"=="6" goto APP_ALL
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto APPINSTALL_MENU

:APP_CHROME
cls
echo  [*] Installing Google Chrome via winget...
winget install --id Google.Chrome -e --accept-source-agreements --accept-package-agreements
echo  [%date% %time%] Chrome install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:APP_VLC
cls
echo  [*] Installing VLC via winget...
winget install --id VideoLAN.VLC -e --accept-source-agreements --accept-package-agreements
echo  [%date% %time%] VLC install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:APP_7ZIP
cls
echo  [*] Installing 7-Zip via winget...
winget install --id 7zip.7zip -e --accept-source-agreements --accept-package-agreements
echo  [%date% %time%] 7zip install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:APP_STEAM
cls
echo  [*] Installing Steam via winget...
winget install --id Valve.Steam -e --accept-source-agreements --accept-package-agreements
echo  [%date% %time%] Steam install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:APP_NOTEPADPP
cls
echo  [*] Installing Notepad++ via winget...
winget install --id Notepad++.Notepad++ -e --accept-source-agreements --accept-package-agreements
echo  [%date% %time%] Notepadpp install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:APP_ALL
cls
echo  [*] Installing all apps via winget...
winget install --id Google.Chrome -e --accept-source-agreements --accept-package-agreements
winget install --id VideoLAN.VLC -e --accept-source-agreements --accept-package-agreements
winget install --id 7zip.7zip -e --accept-source-agreements --accept-package-agreements
winget install --id Valve.Steam -e --accept-source-agreements --accept-package-agreements
winget install --id Notepad++.Notepad++ -e --accept-source-agreements --accept-package-agreements
echo  [+] All apps installed.
echo  [%date% %time%] All apps install attempted >> "%LOGFILE%"
pause
goto APPINSTALL_MENU

:: ============================================================
:: WINPE TOOLKIT
:: ============================================================
:WINPE_MENU
cls
color 0B
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  WINPE / RECOVERY TOOLKIT  ★                                                                                ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Show Recovery Agent Info (reagentc /info)      ║  [2]  Enable Windows RE (reagentc /enable)                                                    ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto WINPE_INFO
if "!CHOICE!"=="2" goto WINPE_ENABLE
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto WINPE_MENU

:WINPE_INFO
cls
echo  [*] Recovery Agent Info:
reagentc /info
echo  [%date% %time%] Reagentc info displayed >> "%LOGFILE%"
pause
goto WINPE_MENU

:WINPE_ENABLE
cls
echo  [*] Enabling Windows Recovery Environment...
reagentc /enable
echo  [%date% %time%] Reagentc enabled >> "%LOGFILE%"
pause
goto WINPE_MENU

:: ============================================================
:: AI DIAGNOSTICS
:: ============================================================
:AI_DIAG_MENU
cls
color 0D
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  AI DIAGNOSTICS (Report Generator)  ★                                                                       ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Generate Full System Report                    ║  [3]  Generate Network Report                                                                 ║
echo  ║  [2]  Generate Task/Process Report                   ║  [4]  Generate Hardware Report                                                                ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto DIAG_FULL
if "!CHOICE!"=="2" goto DIAG_TASK
if "!CHOICE!"=="3" goto DIAG_NET
if "!CHOICE!"=="4" goto DIAG_HW
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto AI_DIAG_MENU

:DIAG_FULL
cls
set "RPTFILE=%REPORTDIR%\FullSystemReport_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
echo  [*] Generating Full System Report...
(
echo ============================================================
echo  SHIVAM ENTERPRISE TOOLKIT - FULL SYSTEM REPORT
echo  Generated: %date% %time%
echo  User: %USERNAME%  Computer: %COMPUTERNAME%
echo  Developer: chaudharyshivamsheokand
echo ============================================================
echo.
echo === SYSTEM INFO ===
systeminfo
echo.
echo === CPU ===
wmic cpu get Name, Manufacturer, MaxClockSpeed, NumberOfCores /format:list
echo.
echo === RAM ===
wmic memorychip get Capacity, Speed, Manufacturer /format:list
echo.
echo === DISK ===
wmic diskdrive get Model, Size, InterfaceType /format:list
wmic logicaldisk get DeviceID, Size, FreeSpace, FileSystem /format:list
echo.
echo === NETWORK ===
ipconfig /all
echo.
echo === RUNNING PROCESSES ===
tasklist
echo.
echo === SERVICES ===
sc query type= all
echo.
) > "!RPTFILE!" 2>&1
echo  [+] Report saved: !RPTFILE!
echo  [%date% %time%] Full report generated >> "%LOGFILE%"
pause
goto AI_DIAG_MENU

:DIAG_TASK
cls
set "RPTFILE=%REPORTDIR%\TaskReport_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
echo  [*] Generating Task/Process Report...
(
echo ============================================================
echo  TASK / PROCESS REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
tasklist /v
echo.
echo === CPU Usage Top Processes ===
wmic process get Name, ProcessId, WorkingSetSize /format:list
) > "%RPTFILE%" 2>&1
echo  [+] Report saved: %RPTFILE%
echo  [%date% %time%] Task report generated >> "%LOGFILE%"
pause
goto AI_DIAG_MENU

:DIAG_NET
cls
set "RPTFILE=%REPORTDIR%\NetworkReport_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
echo  [*] Generating Network Report...
(
echo ============================================================
echo  NETWORK DIAGNOSTICS REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === IP CONFIG ===
ipconfig /all
echo.
echo === ROUTING TABLE ===
route print
echo.
echo === ACTIVE CONNECTIONS ===
netstat -an
echo.
echo === DNS CACHE ===
ipconfig /displaydns
echo.
echo === PING TEST (8.8.8.8) ===
ping 8.8.8.8 -n 4
) > "%RPTFILE%" 2>&1
echo  [+] Report saved: %RPTFILE%
echo  [%date% %time%] Network report generated >> "%LOGFILE%"
pause
goto AI_DIAG_MENU

:DIAG_HW
cls
set "RPTFILE=%REPORTDIR%\HardwareReport_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
echo  [*] Generating Hardware Report...
(
echo ============================================================
echo  HARDWARE REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === CPU ===
wmic cpu get Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors /format:list
echo.
echo === RAM ===
wmic memorychip get Capacity, Speed, Manufacturer, MemoryType, FormFactor /format:list
wmic computersystem get TotalPhysicalMemory /format:list
echo.
echo === DISKS ===
wmic diskdrive get Model, Size, InterfaceType, SerialNumber, Status /format:list
echo.
echo === GPU ===
wmic path win32_VideoController get Name, AdapterRAM, DriverVersion /format:list
echo.
echo === BIOS ===
wmic bios get Manufacturer, Name, Version, ReleaseDate /format:list
echo.
echo === BASEBOARD ===
wmic baseboard get Manufacturer, Product, Version, SerialNumber /format:list
) > "%RPTFILE%" 2>&1
echo  [+] Report saved: %RPTFILE%
echo  [%date% %time%] Hardware report generated >> "%LOGFILE%"
pause
goto AI_DIAG_MENU

:: ============================================================
:: SSD OPTIMIZER
:: ============================================================
:SSD_MENU
cls
color 0E
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  SSD OPTIMIZER  ★                                                                                           ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Enable TRIM                                    ║  [3]  Disable Prefetch/Superfetch (SSD)                                                        ║
echo  ║  [2]  Run Optimize/Defrag on All Drives              ║  [4]  Disable Hibernation (Saves SSD space)                                                   ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto SSD_TRIM
if "!CHOICE!"=="2" goto SSD_OPTIMIZE
if "!CHOICE!"=="3" goto SSD_SUPERFETCH
if "!CHOICE!"=="4" goto SSD_HIBERN
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto SSD_MENU

:SSD_TRIM
cls
echo  [*] Enabling TRIM...
fsutil behavior set disabledeletenotify 0
echo  [+] TRIM enabled.
echo  [%date% %time%] TRIM enabled >> "%LOGFILE%"
pause
goto SSD_MENU

:SSD_OPTIMIZE
cls
echo  [*] Optimizing all drives...
defrag /C /O /U /V
echo  [%date% %time%] Drive optimization done >> "%LOGFILE%"
pause
goto SSD_MENU

:SSD_SUPERFETCH
cls
echo  [*] Disabling Superfetch/SysMain for SSD...
sc config SysMain start= disabled >nul 2>&1
net stop SysMain >nul 2>&1
echo  [+] Superfetch disabled.
echo  [%date% %time%] Superfetch disabled >> "%LOGFILE%"
pause
goto SSD_MENU

:SSD_HIBERN
cls
echo  [*] Disabling Hibernation...
powercfg -h off
echo  [+] Hibernation disabled. hiberfil.sys removed.
echo  [%date% %time%] Hibernation disabled >> "%LOGFILE%"
pause
goto SSD_MENU

:: ============================================================
:: PRIVACY TOOLKIT
:: ============================================================
:PRIVACY_MENU
cls
color 04
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  PRIVACY TOOLKIT  ★                                                                                         ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Disable Telemetry                              ║  [3]  Disable Activity History                                                                ║
echo  ║  [2]  Disable Cortana                                ║  [4]  Disable Location Tracking                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto PRIV_TELEM
if "!CHOICE!"=="2" goto PRIV_CORTANA
if "!CHOICE!"=="3" goto PRIV_HISTORY
if "!CHOICE!"=="4" goto PRIV_LOCATION
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto PRIVACY_MENU

:PRIV_TELEM
cls
echo  [*] Disabling Windows Telemetry...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1
sc config DiagTrack start= disabled >nul 2>&1
net stop DiagTrack >nul 2>&1
sc config dmwappushservice start= disabled >nul 2>&1
net stop dmwappushservice >nul 2>&1
echo  [+] Telemetry disabled.
echo  [%date% %time%] Telemetry disabled >> "%LOGFILE%"
pause
goto PRIVACY_MENU

:PRIV_CORTANA
cls
echo  [*] Disabling Cortana...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul 2>&1
echo  [+] Cortana disabled.
echo  [%date% %time%] Cortana disabled >> "%LOGFILE%"
pause
goto PRIVACY_MENU

:PRIV_HISTORY
cls
echo  [*] Disabling Activity History...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v EnableActivityFeed /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v PublishUserActivities /t REG_DWORD /d 0 /f >nul 2>&1
echo  [+] Activity History disabled.
echo  [%date% %time%] Activity history disabled >> "%LOGFILE%"
pause
goto PRIVACY_MENU

:PRIV_LOCATION
cls
echo  [*] Disabling Location Tracking...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v Value /t REG_SZ /d "Deny" /f >nul 2>&1
echo  [+] Location tracking disabled.
echo  [%date% %time%] Location tracking disabled >> "%LOGFILE%"
pause
goto PRIVACY_MENU

:: ============================================================
:: ADVANCED TOOLS
:: ============================================================
:ADVANCED_MENU
cls
color 08
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  ADVANCED TOOLS  ★                                                                                          ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Malware Scan (Defender Full Scan)              ║  [4]  Browser Data Cleanup                                                                    ║
echo  ║  [2]  Startup Booster (Disable slow startups)        ║  [5]  DNS Toolkit                                                                             ║
echo  ║  [3]  Duplicate File Scanner                         ║                                                                                               ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto ADV_MALWARE
if "!CHOICE!"=="2" goto ADV_STARTUP
if "!CHOICE!"=="3" goto ADV_DUPFILE
if "!CHOICE!"=="4" goto ADV_BROWSCLEAN
if "!CHOICE!"=="5" goto DNS_TOOLKIT
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto ADVANCED_MENU

:ADV_MALWARE
cls
echo  [*] Running Windows Defender Full Scan (background)...
start "" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo  [+] Full scan started in background. Check Windows Security for results.
echo  [%date% %time%] Full malware scan started >> "%LOGFILE%"
pause
goto ADVANCED_MENU

:ADV_STARTUP
cls
echo  [*] Listing and managing startup programs...
echo  [*] Opening Task Manager Startup tab...
start taskmgr
echo  [+] Disable unwanted startup apps in Task Manager.
echo  [%date% %time%] Startup manager opened >> "%LOGFILE%"
pause
goto ADVANCED_MENU

:ADV_DUPFILE
cls
echo  [*] Duplicate File Scanner
echo  [!] This tool scans the Desktop for duplicate files by size.
set "SCANDIR=%USERPROFILE%\Desktop"
set /p "SCANDIR=  Enter folder to scan [default: %USERPROFILE%\Desktop]: "
if "!SCANDIR!"=="" set "SCANDIR=%USERPROFILE%\Desktop"
echo  [*] Scanning: !SCANDIR!
set "RPTFILE=%REPORTDIR%\DuplicateScan_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
echo Duplicate File Report - !SCANDIR! > "!RPTFILE!"
echo Generated: %date% %time% >> "!RPTFILE!"
echo. >> "!RPTFILE!"
for /f "tokens=*" %%F in ('dir /b /s "!SCANDIR!" 2^>nul') do (
    for /f "tokens=4" %%S in ('dir "%%F" /-c 2^>nul ^| find "%%~nxF"') do (
        echo SIZE:%%S FILE:%%F >> "!RPTFILE!"
    )
)
echo  [+] Scan done. Report: !RPTFILE!
echo  [%date% %time%] Duplicate scan done >> "%LOGFILE%"
pause
goto ADVANCED_MENU

:ADV_BROWSCLEAN
cls
echo  [*] Cleaning all browser data (Cache, Cookies, Temp)...
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
    del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cookies" >nul 2>&1
)
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
    del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cookies" >nul 2>&1
)
echo  [+] Browser cleanup done.
echo  [%date% %time%] Browser data cleaned >> "%LOGFILE%"
pause
goto ADVANCED_MENU

:DNS_TOOLKIT
cls
color 09
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  DNS TOOLKIT  ★                                                                                             ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Set DNS to Google (8.8.8.8)                    ║  [3]  Flush DNS Cache                                                                         ║
echo  ║  [2]  Set DNS to Cloudflare (1.1.1.1)               ║  [4]  Display DNS Cache                                                                       ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto DNS_GOOGLE
if "!CHOICE!"=="2" goto DNS_CF
if "!CHOICE!"=="3" goto DNS_FLUSH
if "!CHOICE!"=="4" goto DNS_DISPLAY
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto ADVANCED_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto DNS_TOOLKIT

:DNS_GOOGLE
cls
echo  [*] Setting DNS to Google...
for /f "tokens=3*" %%a in ('netsh interface show interface ^| findstr /i "connected"') do (
    netsh interface ip set dns name="%%b" static 8.8.8.8 >nul 2>&1
    netsh interface ip add dns name="%%b" 8.8.4.4 index=2 >nul 2>&1
)
ipconfig /flushdns
echo  [+] DNS set to Google.
echo  [%date% %time%] DNS set to Google >> "%LOGFILE%"
pause
goto DNS_TOOLKIT

:DNS_CF
cls
echo  [*] Setting DNS to Cloudflare...
for /f "tokens=3*" %%a in ('netsh interface show interface ^| findstr /i "connected"') do (
    netsh interface ip set dns name="%%b" static 1.1.1.1 >nul 2>&1
    netsh interface ip add dns name="%%b" 1.0.0.1 index=2 >nul 2>&1
)
ipconfig /flushdns
echo  [+] DNS set to Cloudflare.
echo  [%date% %time%] DNS set to Cloudflare >> "%LOGFILE%"
pause
goto DNS_TOOLKIT

:DNS_FLUSH
cls
ipconfig /flushdns
echo  [%date% %time%] DNS flushed >> "%LOGFILE%"
pause
goto DNS_TOOLKIT

:DNS_DISPLAY
cls
ipconfig /displaydns | more
echo  [%date% %time%] DNS cache displayed >> "%LOGFILE%"
pause
goto DNS_TOOLKIT

:: ============================================================
:: BATTERY REPORT
:: ============================================================
:BATTERY_REPORT
cls
color 06
call :DRAW_HEADER
echo  [*] Generating Battery Report...
set "BATRPT=%REPORTDIR%\battery_report.html"
powercfg /batteryreport /output "%BATRPT%" >nul 2>&1
if exist "%BATRPT%" (
    echo  [+] Battery report saved: %BATRPT%
    start "" "%BATRPT%"
) else (
    echo  [!] Battery report failed or no battery detected.
)
echo  [%date% %time%] Battery report generated >> "%LOGFILE%"
pause
goto MAIN_MENU2

:: ============================================================
:: BENCHMARK TOOLKIT
:: ============================================================
:BENCHMARK_MENU
cls
color 0E
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  BENCHMARK TOOLKIT  ★                                                                                       ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  CPU Benchmark (prime stress test info)         ║  [3]  Disk Speed Test (via Windows)                                                           ║
echo  ║  [2]  RAM Info Benchmark                             ║  [4]  Network Speed Test (ping latency)                                                       ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto BENCH_CPU
if "!CHOICE!"=="2" goto BENCH_RAM
if "!CHOICE!"=="3" goto BENCH_DISK
if "!CHOICE!"=="4" goto BENCH_NET
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU2
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto BENCHMARK_MENU

:BENCH_CPU
cls
echo  [*] CPU Benchmark Info:
wmic cpu get Name, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors, LoadPercentage /format:list
echo.
echo  [*] Timing a simple loop benchmark...
set "T1=%time%"
set /a CNT=0
for /l %%i in (1,1,100000) do set /a CNT+=1
set "T2=%time%"
echo  [+] Loop to 100000 done.
echo  Start: !T1!  End: !T2!
echo  [%date% %time%] CPU benchmark done >> "%LOGFILE%"
pause
goto BENCHMARK_MENU

:BENCH_RAM
cls
echo  [*] RAM Benchmark Info:
wmic memorychip get Capacity, Speed, Manufacturer, MemoryType /format:list
wmic computersystem get TotalPhysicalMemory /format:list
echo.
echo  [*] Available Memory:
wmic OS get FreePhysicalMemory, TotalVisibleMemorySize /format:list
echo  [%date% %time%] RAM benchmark done >> "%LOGFILE%"
pause
goto BENCHMARK_MENU

:BENCH_DISK
cls
echo  [*] Disk Speed Test using winsat...
winsat disk
echo  [%date% %time%] Disk speed test done >> "%LOGFILE%"
pause
goto BENCHMARK_MENU

:BENCH_NET
cls
echo  [*] Network Latency Test (ping to 8.8.8.8, 1.1.1.1, google.com)...
echo.
echo  --- Google DNS (8.8.8.8) ---
ping 8.8.8.8 -n 5
echo.
echo  --- Cloudflare (1.1.1.1) ---
ping 1.1.1.1 -n 5
echo.
echo  --- Google.com ---
ping google.com -n 5
echo  [%date% %time%] Network latency test done >> "%LOGFILE%"
pause
goto BENCHMARK_MENU

:: ============================================================
:: FIREWALL TOOLKIT
:: ============================================================
:FIREWALL_MENU
cls
color 0C
call :DRAW_HEADER
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                        ★  FIREWALL TOOLKIT  ★                                                                                        ║
echo  ╠═══════════════════════════════════════════════════════╦════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [1]  Enable Windows Firewall                        ║  [4]  Export Firewall Rules                                                                   ║
echo  ║  [2]  Disable Windows Firewall                       ║  [5]  Show Firewall Status                                                                    ║
echo  ║  [3]  Reset Firewall to Default                      ║  [6]  Open Firewall Panel                                                                     ║
echo  ╠═══════════════════════════════════════════════════════╩════════════════════════════════════════════════════════════════════════════════════════════════╣
echo  ║  [H] Home   [B] Back   [X] Exit                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto FW_ENABLE
if "!CHOICE!"=="2" goto FW_DISABLE
if "!CHOICE!"=="3" goto FW_RESET
if "!CHOICE!"=="4" goto FW_EXPORT
if "!CHOICE!"=="5" goto FW_STATUS
if "!CHOICE!"=="6" goto FW_PANEL
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU2
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto FIREWALL_MENU

:FW_ENABLE
cls
echo  [*] Enabling Windows Firewall for all profiles...
netsh advfirewall set allprofiles state on
echo  [%date% %time%] Firewall enabled >> "%LOGFILE%"
pause
goto FIREWALL_MENU

:FW_DISABLE
cls
echo  [!] WARNING: Disabling Windows Firewall reduces security!
set /p "CONF=  Type YES to confirm: "
if /i "!CONF!"=="YES" (
    netsh advfirewall set allprofiles state off
    echo  [+] Firewall disabled.
    echo  [%date% %time%] Firewall disabled >> "%LOGFILE%"
) else (
    echo  [!] Cancelled.
)
pause
goto FIREWALL_MENU

:FW_RESET
cls
echo  [*] Resetting Firewall to defaults...
netsh advfirewall reset
echo  [%date% %time%] Firewall reset >> "%LOGFILE%"
pause
goto FIREWALL_MENU

:FW_EXPORT
cls
echo  [*] Exporting Firewall rules...
netsh advfirewall export "%REPORTDIR%\firewall_rules.wfw"
echo  [+] Saved to: %REPORTDIR%\firewall_rules.wfw
echo  [%date% %time%] Firewall exported >> "%LOGFILE%"
pause
goto FIREWALL_MENU

:FW_STATUS
cls
echo  [*] Firewall Status:
netsh advfirewall show allprofiles
echo  [%date% %time%] Firewall status displayed >> "%LOGFILE%"
pause
goto FIREWALL_MENU

:FW_PANEL
cls
echo  [*] Opening Windows Firewall with Advanced Security...
start wf.msc
echo  [%date% %time%] Firewall panel opened >> "%LOGFILE%"
pause
goto FIREWALL_MENU

:: ============================================================
:: EXIT
:: ============================================================
:EXIT_TOOLKIT
cls
color 0A
echo.
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║                                                                                                                                                       ║
echo  ║   Thank you for using SHIVAM ENTERPRISE TOOLKIT                                                                                                       ║
echo  ║   Developer: चौधरी शिवम श्योकंद                                                                                                                       ║
echo  ║   GitHub  :  github.com/chaudharyshivamsheokand                                                                                                       ║
echo  ║   Instagram:  @ig.developershivam                                                                                                                      ║
echo  ║   YouTube  :  TechEdu-X                                                                                                                               ║
echo  ║                                                                                                                                                       ║
echo  ║   Logs saved to: %LOGFILE%
echo  ║   Reports at  : %REPORTDIR%
echo  ║   Backups at  : %BACKUPDIR%
echo  ║                                                                                                                                                       ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo  [%date% %time%] SHIVAM ENTERPRISE TOOLKIT Exited >> "%LOGFILE%"
timeout /t 3 >nul
endlocal
exit /b 0
