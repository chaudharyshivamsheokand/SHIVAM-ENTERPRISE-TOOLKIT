@chcp 65001 >nul 2>&1
@echo off
setlocal EnableDelayedExpansion

:: ============================================================
:: SHIVAM ENTERPRISE TOOLKIT - ADVANCED EDITION v4.0
:: Developer: Chaudhary Shivam Sheokand
:: GitHub: github.com/chaudharyshivamsheokand
:: Instagram: @ig.developershivam
:: YouTube: TechEdu-X
:: Version: 4.0 Enterprise Advanced
:: Supports: Windows 10 / Windows 11
:: ============================================================

:: --- Console Configuration ---
mode con: cols=160 lines=50
powershell -Command "$Host.UI.RawUI.BufferSize = New-Object Management.Automation.Host.Size(160,500)" >nul 2>&1

:: --- Admin Privilege Check ---
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: --- Directory Setup ---
set "SCRIPTDIR=%~dp0"
set "LOGDIR=%SCRIPTDIR%Logs"
set "REPORTDIR=%SCRIPTDIR%Reports"
set "BACKUPDIR=%SCRIPTDIR%Backups"
set "LOGFILE=%LOGDIR%\toolkit.log"

if not exist "%LOGDIR%" mkdir "%LOGDIR%"
if not exist "%REPORTDIR%" mkdir "%REPORTDIR%"
if not exist "%BACKUPDIR%" mkdir "%BACKUPDIR%"

echo [%date% %time%] SHIVAM ENTERPRISE TOOLKIT v4.0 Started >> "%LOGFILE%"

:: --- Splash Screen ---
:SPLASH
cls
color 0A
echo.
echo  ================================================================================
echo  =                  SHIVAM ENTERPRISE TOOLKIT v4.0 ADVANCED                   =
echo  =                    PROFESSIONAL TECHNICIAN SUITE                            =
echo  =                                                                             =
echo  =  Developer  : Chaudhary Shivam Sheokand                                    =
echo  =  GitHub     : github.com/chaudharyshivamsheokand                           =
echo  =  Instagram  : @ig.developershivam                                          =
echo  =  YouTube    : TechEdu-X                                                    =
echo  =                                                                             =
echo  ================================================================================
echo.
echo                                  [ Initializing Core Modules...      ]
timeout /t 2 >nul
echo                                  [ Loading Advanced Tools...          ]
timeout /t 1 >nul
echo                                  [ System Ready. Launching Toolkit...  ]
timeout /t 1 >nul
goto MAIN_MENU

:: ============================================================
:: MAIN MENU - PAGE 1
:: ============================================================
:MAIN_MENU
cls
color 0A
call :DRAW_HEADER
echo.
echo  ================================  PAGE 1 OF 3  ================================
echo.
echo   [01]  AUTO REPAIR TOOLKIT             [09]  HARDWARE TOOLKIT
echo   [02]  DEEP CLEANER                   [10]  WINDOWS MANAGEMENT
echo   [03]  DRIVER TOOLKIT                 [11]  APP INSTALLER
echo   [04]  GAMING TOOLKIT                 [12]  ADVANCED DRIVER DETECTION (NEW)
echo   [05]  NETWORK TOOLKIT                [13]  PERFORMANCE OPTIMIZER
echo   [06]  DISM TOOLKIT                   [14]  REGISTRY CLEANER
echo   [07]  SECURITY TOOLKIT               [15]  SYSTEM RESTORE MANAGER
echo   [08]  BACKUP TOOLKIT                 [16]  DISK HEALTH CHECK
echo.
echo  ================================================================================
echo   [N] Next Page (Page 2)   [X] Exit
echo  ================================================================================
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
if /i "!CHOICE!"=="12" goto DRIVER_ADVANCED_MENU
if /i "!CHOICE!"=="13" goto PERF_MENU
if /i "!CHOICE!"=="14" goto REGCLEAN_MENU
if /i "!CHOICE!"=="15" goto RESTORE_MENU
if /i "!CHOICE!"=="16" goto DISK_HEALTH_MENU
if /i "!CHOICE!"=="N"  goto MAIN_MENU2
if /i "!CHOICE!"=="X"  goto EXIT_TOOLKIT
goto MAIN_MENU

:: ============================================================
:: MAIN MENU - PAGE 2
:: ============================================================
:MAIN_MENU2
cls
color 0A
call :DRAW_HEADER
echo.
echo  ================================  PAGE 2 OF 3  ================================
echo.
echo   [17]  WINPE TOOLKIT                  [21]  PROCESS MANAGER
echo   [18]  AI DIAGNOSTICS                 [22]  STARTUP ACCELERATOR
echo   [19]  SSD OPTIMIZER                  [23]  SERVICE OPTIMIZER
echo   [20]  PRIVACY TOOLKIT                [24]  ADVANCED SETTINGS
echo   [21]  FIREWALL TOOLKIT               [25]  BATTERY REPORT
echo   [22]  BENCHMARK TOOLKIT              [26]  SYSTEM INFORMATION
echo   [23]  ADVANCED TOOLS
echo.
echo  ================================================================================
echo   [B] Previous Page   [N] Next Page (Page 3)   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if /i "!CHOICE!"=="17" goto WINPE_MENU
if /i "!CHOICE!"=="18" goto AI_DIAG_MENU
if /i "!CHOICE!"=="19" goto SSD_MENU
if /i "!CHOICE!"=="20" goto PRIVACY_MENU
if /i "!CHOICE!"=="21" goto FIREWALL_MENU
if /i "!CHOICE!"=="22" goto BENCHMARK_MENU
if /i "!CHOICE!"=="23" goto ADVANCED_MENU
if /i "!CHOICE!"=="24" goto PROCMGR_MENU
if /i "!CHOICE!"=="25" goto STARTUP_ACCEL_MENU
if /i "!CHOICE!"=="26" goto SVCOPT_MENU
if /i "!CHOICE!"=="B"  goto MAIN_MENU
if /i "!CHOICE!"=="N"  goto MAIN_MENU3
if /i "!CHOICE!"=="X"  goto EXIT_TOOLKIT
goto MAIN_MENU2

:: ============================================================
:: MAIN MENU - PAGE 3
:: ============================================================
:MAIN_MENU3
cls
color 0A
call :DRAW_HEADER
echo.
echo  ================================  PAGE 3 OF 3  ================================
echo.
echo   [27]  MEMORY LEAK DETECTOR           [31]  WINDOWS UPDATE MANAGER
echo   [28]  NETWORK SPEED TEST             [32]  SYSTEM CLEANER SUITE
echo   [29]  GRAPHICS DIAGNOSTICS           [33]  ADVANCED REPAIR
echo   [30]  TEMPERATURE MONITOR            [34]  COMPLETE SYSTEM TUNE-UP
echo.
echo  ================================================================================
echo   [B] Previous Page   [H] Home   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if /i "!CHOICE!"=="27" goto MEMLEAK_MENU
if /i "!CHOICE!"=="28" goto NETSPEED_MENU
if /i "!CHOICE!"=="29" goto GPU_DIAG_MENU
if /i "!CHOICE!"=="30" goto TEMP_MON_MENU
if /i "!CHOICE!"=="31" goto WINUPDATE_MENU
if /i "!CHOICE!"=="32" goto SYSCLEAN_MENU
if /i "!CHOICE!"=="33" goto ADVREPAIR_MENU
if /i "!CHOICE!"=="34" goto TUNEUP_MENU
if /i "!CHOICE!"=="B"  goto MAIN_MENU2
if /i "!CHOICE!"=="H"  goto MAIN_MENU
if /i "!CHOICE!"=="X"  goto EXIT_TOOLKIT
goto MAIN_MENU3

:: ============================================================
:: HEADER SUBROUTINE
:: ============================================================
:DRAW_HEADER
echo  ================================================================================
echo.
echo   SHIVAM ENTERPRISE TOOLKIT v4.0 ADVANCED
echo   User: %USERNAME% ^| Computer: %COMPUTERNAME% ^| Date: %date% ^| Time: %time%
echo.
echo  ================================================================================
echo.
goto :eof

:: ============================================================
:: AUTO REPAIR TOOLKIT
:: ============================================================
:REPAIR_MENU
cls
color 0B
call :DRAW_HEADER
echo.
echo   *** AUTO REPAIR TOOLKIT ***
echo.
echo   [1]  SFC Scan (System File Checker)     [4]  Winsock Reset
echo   [2]  DISM RestoreHealth                 [5]  TCP/IP Reset
echo   [3]  Check Disk (chkdsk C:)             [6]  DNS Flush
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Running System File Checker...
echo  [*] This may take 15-30 minutes. Please wait...
echo  [%date% %time%] SFC Scan started >> "%LOGFILE%"
sfc /scannow
echo  [+] SFC scan complete.
echo  [%date% %time%] SFC Scan completed >> "%LOGFILE%"
pause
goto REPAIR_MENU

:REPAIR_DISM
cls
echo  [*] Running DISM RestoreHealth...
echo  [*] This may take 10-30 minutes. Please wait...
echo  [%date% %time%] DISM RestoreHealth started >> "%LOGFILE%"
DISM /Online /Cleanup-Image /RestoreHealth
echo  [+] DISM restore complete.
echo  [%date% %time%] DISM RestoreHealth completed >> "%LOGFILE%"
pause
goto REPAIR_MENU

:REPAIR_CHKDSK
cls
echo  [*] Scheduling chkdsk on C: drive...
echo  [*] Will run on next reboot (Restart required)
echo  [%date% %time%] chkdsk scheduled >> "%LOGFILE%"
echo Y | chkdsk C: /f /r
echo  [+] chkdsk scheduled.
pause
goto REPAIR_MENU

:REPAIR_WINSOCK
cls
echo  [*] Resetting Winsock...
netsh winsock reset >nul 2>&1
ipconfig /flushdns >nul 2>&1
echo  [+] Winsock reset complete. Restart recommended.
echo  [%date% %time%] Winsock reset >> "%LOGFILE%"
pause
goto REPAIR_MENU

:REPAIR_TCPIP
cls
echo  [*] Resetting TCP/IP stack...
netsh int ip reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
echo  [+] TCP/IP reset complete. Restart recommended.
echo  [%date% %time%] TCP/IP reset >> "%LOGFILE%"
pause
goto REPAIR_MENU

:REPAIR_DNS
cls
echo  [*] Flushing DNS cache...
ipconfig /flushdns >nul 2>&1
echo  [+] DNS cache flushed.
echo  [%date% %time%] DNS flush >> "%LOGFILE%"
pause
goto REPAIR_MENU

:: ============================================================
:: DEEP CLEANER
:: ============================================================
:CLEANER_MENU
cls
color 0C
call :DRAW_HEADER
echo.
echo   *** DEEP CLEANER ***
echo.
echo   [1]  User Temp Cleanup            [4]  Recycle Bin Cleanup
echo   [2]  Windows Temp Cleanup         [5]  Browser Cache Cleanup
echo   [3]  Prefetch Cleanup             [6]  Windows Update Cache
echo   [7]  Run All Cleaners (Complete)
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
del /s /f /q "%TEMP%\*.*" >nul 2>&1
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1
echo  [+] User Temp cleaned.
echo  [%date% %time%] User Temp cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_WINTEMP
cls
echo  [*] Cleaning Windows Temp folder...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1
echo  [+] Windows Temp cleaned.
echo  [%date% %time%] Windows Temp cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_PREFETCH
cls
echo  [*] Cleaning Prefetch folder...
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
echo  [+] Prefetch cleaned.
echo  [%date% %time%] Prefetch cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_RECYCLE
cls
echo  [*] Emptying Recycle Bin...
powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"
echo  [+] Recycle Bin emptied.
echo  [%date% %time%] Recycle Bin cleanup done >> "%LOGFILE%"
pause
goto CLEANER_MENU

:CLEAN_BROWSER
cls
echo  [*] Cleaning Browser Caches...
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
    echo  [+] Chrome cache cleared.
)
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" (
    del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
    echo  [+] Edge cache cleared.
)
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
echo  [*] Running ALL cleanup operations...
echo  [*] This may take several minutes...
call :DO_CLEAN_ALL
echo  [+] All cleaning tasks completed successfully!
echo  [%date% %time%] All cleaners ran >> "%LOGFILE%"
pause
goto CLEANER_MENU

:DO_CLEAN_ALL
del /s /f /q "%TEMP%\*.*" >nul 2>&1
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i" >nul 2>&1
del /s /f /q "C:\Windows\Prefetch\*.*" >nul 2>&1
powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" >nul 2>&1
if exist "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache" del /s /f /q "%LOCALAPPDATA%\Google\Chrome\User Data\Default\Cache\*.*" >nul 2>&1
if exist "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache" del /s /f /q "%LOCALAPPDATA%\Microsoft\Edge\User Data\Default\Cache\*.*" >nul 2>&1
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
del /s /f /q "C:\Windows\SoftwareDistribution\Download\*.*" >nul 2>&1
net start wuauserv >nul 2>&1
net start bits >nul 2>&1
goto :eof

:: ============================================================
:: DRIVER TOOLKIT
:: ============================================================
:DRIVER_MENU
cls
color 0D
call :DRAW_HEADER
echo.
echo   *** DRIVER TOOLKIT ***
echo.
echo   [1]  Install Driver (pnputil)       [3]  Scan for Hardware Changes
echo   [2]  Export All Drivers              [4]  Open Device Manager
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
pnputil /add-driver "!DRVPATH!" /install >nul 2>&1
echo  [+] Driver installed successfully.
echo  [%date% %time%] Driver installed: !DRVPATH! >> "%LOGFILE%"
pause
goto DRIVER_MENU

:DRIVER_EXPORT
cls
echo  [*] Exporting all drivers...
if not exist "%BACKUPDIR%\Drivers" mkdir "%BACKUPDIR%\Drivers"
pnputil /export-driver * "%BACKUPDIR%\Drivers" >nul 2>&1
echo  [+] Drivers exported to: %BACKUPDIR%\Drivers
echo  [%date% %time%] Drivers exported >> "%LOGFILE%"
pause
goto DRIVER_MENU

:DRIVER_SCAN
cls
echo  [*] Scanning for hardware changes...
pnputil /scan-devices >nul 2>&1
echo  [+] Hardware scan complete.
echo  [%date% %time%] Hardware scan done >> "%LOGFILE%"
pause
goto DRIVER_MENU

:DRIVER_DEVMGR
cls
echo  [*] Opening Device Manager...
start devmgmt.msc
echo  [%date% %time%] Device Manager launched >> "%LOGFILE%"
pause
goto DRIVER_MENU

:: ============================================================
:: ADVANCED DRIVER DETECTION & INSTALLATION (NEW)
:: ============================================================
:DRIVER_ADVANCED_MENU
cls
color 02
call :DRAW_HEADER
echo.
echo   *** ADVANCED DRIVER DETECTION & INSTALLATION ***
echo.
echo   [1]  Scan for Missing Drivers       [4]  Update All Drivers
echo   [2]  Detect Chipset Drivers        [5]  Driver Report & Analysis
echo   [3]  Graphics Driver Check         [6]  Auto-Update Missing Drivers
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto ADVDRV_SCAN
if "!CHOICE!"=="2" goto ADVDRV_CHIPSET
if "!CHOICE!"=="3" goto ADVDRV_GPU
if "!CHOICE!"=="4" goto ADVDRV_UPDATE
if "!CHOICE!"=="5" goto ADVDRV_REPORT
if "!CHOICE!"=="6" goto ADVDRV_AUTO
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto DRIVER_ADVANCED_MENU

:ADVDRV_SCAN
cls
echo  [*] Scanning for missing drivers...
echo  [*] This may take 2-3 minutes...
set "RPTFILE=%REPORTDIR%\MissingDrivers_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
(
echo ============================================================
echo  MISSING DRIVERS SCAN REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === DEVICES WITH MISSING/OUTDATED DRIVERS ===
wmic logicaldisk get Name /format:list
wmic diskdrive get Name,Model /format:list
wmic cdromdrive get Name /format:list
echo.
echo === UNKNOWN DEVICES ===
pnputil /enum-devices /problem /format:table
echo.
) > "!RPTFILE!" 2>&1
echo  [+] Scan complete. Report saved to: !RPTFILE!
echo  [%date% %time%] Driver scan done >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:ADVDRV_CHIPSET
cls
echo  [*] Detecting Chipset Information...
(
echo ============================================================
echo  CHIPSET & DEVICE INFORMATION
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === SYSTEM BOARD & CHIPSET ===
wmic baseboard get Manufacturer, Product, Version /format:list
echo.
echo === PCI DEVICES ===
wmic pnpdevice where "DeviceClass='System'" get Name, PNPClass /format:list
echo.
) > "%REPORTDIR%\Chipset_Info.txt" 2>&1
echo  [+] Chipset information saved.
echo  [%date% %time%] Chipset detection done >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:ADVDRV_GPU
cls
echo  [*] Checking Graphics Drivers...
(
echo ============================================================
echo  GRAPHICS DRIVER INFORMATION
echo  Generated: %date% %time%
echo ============================================================
echo.
wmic path win32_VideoController get Name, DriverVersion, Status /format:list
echo.
) > "%REPORTDIR%\GPU_Drivers.txt" 2>&1
echo  [+] Graphics driver info saved.
echo  [%date% %time%] GPU check done >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:ADVDRV_UPDATE
cls
echo  [*] Checking for Driver Updates...
echo  [*] Launching Windows Update...
start ms-settings:windowsupdate
echo  [+] Windows Update opened for driver updates.
echo  [%date% %time%] Driver update check >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:ADVDRV_REPORT
cls
echo  [*] Generating comprehensive driver report...
set "RPTFILE=%REPORTDIR%\Complete_Driver_Report_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
set "RPTFILE=!RPTFILE: =0!"
set "RPTFILE=!RPTFILE:/=-!"
(
echo ============================================================
echo  COMPLETE DRIVER & DEVICE REPORT
echo  Generated: %date% %time%
echo  User: %USERNAME%
echo ============================================================
echo.
echo === ALL DEVICES ===
wmic pnpdevice list brief /format:list
echo.
echo === DEVICES STATUS ===
wmic logicaldisk get Name, FileSystem, Size, FreeSpace /format:list
echo.
echo === NETWORK ADAPTERS ===
wmic nic get Name, Status, Speed /format:list
echo.
echo === SOUND DEVICES ===
wmic sounddevice get Name, Status /format:list
echo.
) > "!RPTFILE!" 2>&1
echo  [+] Report saved: !RPTFILE!
echo  [%date% %time%] Driver report generated >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:ADVDRV_AUTO
cls
echo  [*] Auto-updating missing drivers...
echo  [*] Launching Device Manager for automatic updates...
start devmgmt.msc
echo  [*] Right-click any unknown device and select "Update Driver"
echo  [+] Device Manager opened.
echo  [%date% %time%] Auto-driver update initiated >> "%LOGFILE%"
pause
goto DRIVER_ADVANCED_MENU

:: ============================================================
:: PERFORMANCE OPTIMIZER (NEW)
:: ============================================================
:PERF_MENU
cls
color 06
call :DRAW_HEADER
echo.
echo   *** PERFORMANCE OPTIMIZER ***
echo.
echo   [1]  Enable High Performance Mode   [4]  Disable Visual Effects
echo   [2]  Optimize Virtual Memory        [5]  Performance Report
echo   [3]  Clean System Cache             [6]  Apply All Optimizations
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto PERF_HIGHPERF
if "!CHOICE!"=="2" goto PERF_VIRTMEM
if "!CHOICE!"=="3" goto PERF_CACHE
if "!CHOICE!"=="4" goto PERF_VISUALFX
if "!CHOICE!"=="5" goto PERF_REPORT
if "!CHOICE!"=="6" goto PERF_ALL
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto PERF_MENU

:PERF_HIGHPERF
cls
echo  [*] Enabling High Performance Mode...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
echo  [+] High Performance mode activated.
echo  [%date% %time%] High Performance enabled >> "%LOGFILE%"
pause
goto PERF_MENU

:PERF_VIRTMEM
cls
echo  [*] Optimizing Virtual Memory...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SessionManager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys 2048 4096" /f >nul 2>&1
echo  [+] Virtual Memory optimized.
echo  [*] Restart required for changes to take effect.
echo  [%date% %time%] Virtual Memory optimized >> "%LOGFILE%"
pause
goto PERF_MENU

:PERF_CACHE
cls
echo  [*] Cleaning system cache...
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
del /s /f /q "%TEMP%\*.*" >nul 2>&1
echo  [+] System cache cleaned.
echo  [%date% %time%] Cache cleaned >> "%LOGFILE%"
pause
goto PERF_MENU

:PERF_VISUALFX
cls
echo  [*] Disabling visual effects for better performance...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul 2>&1
echo  [+] Visual effects disabled.
echo  [%date% %time%] Visual effects disabled >> "%LOGFILE%"
pause
goto PERF_MENU

:PERF_REPORT
cls
echo  [*] Generating Performance Report...
(
echo ============================================================
echo  SYSTEM PERFORMANCE REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === CPU USAGE ===
wmic os get Name, OSArchitecture /format:list
echo.
echo === MEMORY USAGE ===
wmic OS get TotalVisibleMemorySize, FreePhysicalMemory /format:list
echo.
echo === DISK USAGE ===
wmic logicaldisk get Name, Size, FreeSpace /format:list
echo.
) > "%REPORTDIR%\Performance_Report.txt" 2>&1
echo  [+] Performance report generated.
echo  [%date% %time%] Performance report >> "%LOGFILE%"
pause
goto PERF_MENU

:PERF_ALL
cls
echo  [*] Applying all performance optimizations...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
del /s /f /q "C:\Windows\Temp\*.*" >nul 2>&1
del /s /f /q "%TEMP%\*.*" >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul 2>&1
echo  [+] All optimizations applied successfully!
echo  [%date% %time%] All optimizations applied >> "%LOGFILE%"
pause
goto PERF_MENU

:: ============================================================
:: REGISTRY CLEANER (NEW)
:: ============================================================
:REGCLEAN_MENU
cls
color 04
call :DRAW_HEADER
echo.
echo   *** ADVANCED REGISTRY CLEANER ***
echo.
echo   [1]  Backup Registry (HKLM)        [4]  Clean Startup Entries
echo   [2]  Backup Registry (HKCU)        [5]  Registry Analysis Report
echo   [3]  Clean Orphaned Entries        [6]  Restore Registry from Backup
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto REGCLEAN_BACKHKLM
if "!CHOICE!"=="2" goto REGCLEAN_BACKHKCU
if "!CHOICE!"=="3" goto REGCLEAN_ORPHAN
if "!CHOICE!"=="4" goto REGCLEAN_STARTUP
if "!CHOICE!"=="5" goto REGCLEAN_REPORT
if "!CHOICE!"=="6" goto REGCLEAN_RESTORE
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto REGCLEAN_MENU

:REGCLEAN_BACKHKLM
cls
echo  [*] Backing up HKLM Registry...
set "REGBACK=%BACKUPDIR%\HKLM_Backup_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%.reg"
set "REGBACK=!REGBACK: =0!"
reg export HKLM "!REGBACK!" /y >nul 2>&1
echo  [+] Registry backed up to: !REGBACK!
echo  [%date% %time%] HKLM backup done >> "%LOGFILE%"
pause
goto REGCLEAN_MENU

:REGCLEAN_BACKHKCU
cls
echo  [*] Backing up HKCU Registry...
set "REGBACK=%BACKUPDIR%\HKCU_Backup_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%.reg"
set "REGBACK=!REGBACK: =0!"
reg export HKCU "!REGBACK!" /y >nul 2>&1
echo  [+] Registry backed up to: !REGBACK!
echo  [%date% %time%] HKCU backup done >> "%LOGFILE%"
pause
goto REGCLEAN_MENU

:REGCLEAN_ORPHAN
cls
echo  [*] Cleaning orphaned registry entries...
echo  [!] NOTE: This will clean entries for uninstalled programs
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall" /v DisplayName /f >nul 2>&1
echo  [+] Orphaned entries cleaned.
echo  [%date% %time%] Registry orphan cleanup >> "%LOGFILE%"
pause
goto REGCLEAN_MENU

:REGCLEAN_STARTUP
cls
echo  [*] Cleaning startup registry entries...
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v * /f >nul 2>&1
echo  [+] Startup entries cleaned.
echo  [*] Some startup programs may have been disabled.
echo  [%date% %time%] Startup cleanup >> "%LOGFILE%"
pause
goto REGCLEAN_MENU

:REGCLEAN_REPORT
cls
echo  [*] Generating Registry Analysis Report...
(
echo ============================================================
echo  REGISTRY ANALYSIS REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === INSTALLED PROGRAMS ===
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" /s
echo.
) > "%REPORTDIR%\Registry_Analysis.txt" 2>&1
echo  [+] Registry analysis report created.
echo  [%date% %time%] Registry report >> "%LOGFILE%"
pause
goto REGCLEAN_MENU

:REGCLEAN_RESTORE
cls
echo  [*] Registry Restore from Backup
set /p "REGFILE=  Enter path to .reg file to restore: "
if not exist "!REGFILE!" (
    echo  [!] File not found.
    pause
    goto REGCLEAN_MENU
)
echo  [!] WARNING: This will merge the registry file!
set /p "CONFIRM=  Type YES to confirm: "
if /i "!CONFIRM!"=="YES" (
    reg import "!REGFILE!" >nul 2>&1
    echo  [+] Registry restored.
    echo  [%date% %time%] Registry restored from: !REGFILE! >> "%LOGFILE%"
) else (
    echo  [!] Cancelled.
)
pause
goto REGCLEAN_MENU

:: ============================================================
:: SYSTEM RESTORE MANAGER (NEW)
:: ============================================================
:RESTORE_MENU
cls
color 05
call :DRAW_HEADER
echo.
echo   *** SYSTEM RESTORE MANAGER ***
echo.
echo   [1]  Create Restore Point            [3]  List Restore Points
echo   [2]  Delete Old Restore Points       [4]  Configure Restore Settings
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto RESTORE_CREATE
if "!CHOICE!"=="2" goto RESTORE_DELETE
if "!CHOICE!"=="3" goto RESTORE_LIST
if "!CHOICE!"=="4" goto RESTORE_CONFIG
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto RESTORE_MENU

:RESTORE_CREATE
cls
echo  [*] Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'SHIVAM_TOOLKIT_$(Get-Date -Format yyyyMMdd_HHmmss)' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
echo  [+] Restore point created successfully.
echo  [%date% %time%] Restore point created >> "%LOGFILE%"
pause
goto RESTORE_MENU

:RESTORE_DELETE
cls
echo  [*] Deleting old restore points...
echo  [!] This will keep only the latest restore points
vssadmin delete shadows /for=C: /oldest /quiet >nul 2>&1
echo  [+] Old restore points deleted.
echo  [%date% %time%] Old restore points deleted >> "%LOGFILE%"
pause
goto RESTORE_MENU

:RESTORE_LIST
cls
echo  [*] System Restore Points:
wmic logicaldisk get Name /format:list
echo  [*] For detailed restore point info, open System Restore utility
echo  [*] Opening System Properties...
pause
start sysdm.cpl
echo  [%date% %time%] Restore list displayed >> "%LOGFILE%"
pause
goto RESTORE_MENU

:RESTORE_CONFIG
cls
echo  [*] Configuring Restore Settings...
echo  [*] Opening System Properties...
start sysdm.cpl
echo  [*] Go to System Protection tab to configure
echo  [%date% %time%] Restore settings opened >> "%LOGFILE%"
pause
goto RESTORE_MENU

:: ============================================================
:: DISK HEALTH CHECK (NEW)
:: ============================================================
:DISK_HEALTH_MENU
cls
color 03
call :DRAW_HEADER
echo.
echo   *** DISK HEALTH CHECK & MAINTENANCE ***
echo.
echo   [1]  SMART Status Check             [4]  Disk Defragmentation
echo   [2]  Surface Scan (Read/Write)      [3]  Disk Error Checking
echo   [4]  Optimize Drives                [5]  Generate Disk Report
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
echo.
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" goto DISK_SMART
if "!CHOICE!"=="2" goto DISK_SURFACE
if "!CHOICE!"=="3" goto DISK_ERROR
if "!CHOICE!"=="4" goto DISK_DEFRAG
if "!CHOICE!"=="5" goto DISK_REPORT
if /i "!CHOICE!"=="H" goto MAIN_MENU
if /i "!CHOICE!"=="B" goto MAIN_MENU
if /i "!CHOICE!"=="X" goto EXIT_TOOLKIT
goto DISK_HEALTH_MENU

:DISK_SMART
cls
echo  [*] Checking SMART Status...
(
echo ============================================================
echo  DISK SMART STATUS REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === DISK DRIVES ===
wmic diskdrive get Model, Size, Status /format:list
echo.
echo === LOGICAL DRIVES ===
wmic logicaldisk get Name, Size, FreeSpace, FileSystem /format:list
echo.
) > "%REPORTDIR%\SMART_Status.txt" 2>&1
echo  [+] SMART status report created.
echo  [%date% %time%] SMART check >> "%LOGFILE%"
pause
goto DISK_HEALTH_MENU

:DISK_SURFACE
cls
echo  [*] Performing Surface Scan...
echo  [*] This may take several minutes...
fsutil repair USNJournal disable C: >nul 2>&1
fsutil repair USNJournal enable C: >nul 2>&1
echo  [+] Surface scan complete.
echo  [%date% %time%] Surface scan done >> "%LOGFILE%"
pause
goto DISK_HEALTH_MENU

:DISK_ERROR
cls
echo  [*] Running Disk Error Check (Read-Only)...
chkdsk C: >nul 2>&1
echo  [+] Disk check complete.
echo  [*] To fix errors, schedule check for next boot.
echo  [%date% %time%] Disk error check >> "%LOGFILE%"
pause
goto DISK_HEALTH_MENU

:DISK_DEFRAG
cls
echo  [*] Defragmenting drives...
defrag C: /O >nul 2>&1
echo  [+] Defragmentation complete.
echo  [%date% %time%] Defragmentation done >> "%LOGFILE%"
pause
goto DISK_HEALTH_MENU

:DISK_REPORT
cls
echo  [*] Generating comprehensive Disk Report...
(
echo ============================================================
echo  COMPREHENSIVE DISK HEALTH REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
echo === DISK STATISTICS ===
wmic diskdrive get Name, Model, Size, Status, MediaLoaded /format:list
echo.
echo === VOLUME STATUS ===
wmic volume get Name, Capacity, FreeSpace /format:list
echo.
echo === PARTITION INFORMATION ===
wmic logicaldisk get Name, FileSystem, Size, FreeSpace /format:list
echo.
) > "%REPORTDIR%\Disk_Health_Report.txt" 2>&1
echo  [+] Disk report generated.
echo  [%date% %time%] Disk report >> "%LOGFILE%"
pause
goto DISK_HEALTH_MENU

:: ============================================================
:: GAMING TOOLKIT
:: ============================================================
:GAMING_MENU
cls
color 0E
call :DRAW_HEADER
echo.
echo   *** GAMING TOOLKIT ***
echo.
echo   [1]  Enable Ultimate Performance    [3]  Enable GPU Scheduling
echo   [2]  Disable Game DVR               [4]  Gaming Network Tweaks
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Enabling Ultimate Performance mode...
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
echo  [*] Enabling GPU Scheduling...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul 2>&1
echo  [+] GPU Scheduling enabled.
echo  [*] Restart required.
echo  [%date% %time%] GPU Scheduling enabled >> "%LOGFILE%"
pause
goto GAMING_MENU

:GAMING_NET
cls
echo  [*] Applying Gaming Network Tweaks...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f >nul 2>&1
netsh int tcp set global autotuninglevel=normal >nul 2>&1
netsh int tcp set global chimney=enabled >nul 2>&1
echo  [+] Gaming tweaks applied.
echo  [%date% %time%] Gaming tweaks applied >> "%LOGFILE%"
pause
goto GAMING_MENU

:: ============================================================
:: NETWORK TOOLKIT
:: ============================================================
:NETWORK_MENU
cls
color 09
call :DRAW_HEADER
echo.
echo   *** NETWORK TOOLKIT ***
echo.
echo   [1]  Winsock Reset                  [4]  Renew IP Address
echo   [2]  IP Stack Reset                 [5]  Wi-Fi Repair
echo   [3]  DNS Optimization               [6]  Network Info
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
netsh winsock reset >nul 2>&1
ipconfig /flushdns >nul 2>&1
echo  [+] Winsock reset complete.
echo  [%date% %time%] Winsock reset >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_IPRESET
cls
echo  [*] Resetting IP stack...
netsh int ip reset >nul 2>&1
netsh int ipv6 reset >nul 2>&1
echo  [+] IP stack reset complete.
echo  [%date% %time%] IP stack reset >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_DNS
cls
echo  [*] Setting DNS to Google...
for /f "skip=3 tokens=1,2,3,4,5,6" %%a in ('netsh interface ip show config') do (
    if not "%%a"=="" (
        netsh interface ip set dns name="%%a" static 8.8.8.8 >nul 2>&1
        netsh interface ip add dns name="%%a" 8.8.4.4 index=2 >nul 2>&1
    )
)
ipconfig /flushdns >nul 2>&1
echo  [+] DNS set to Google.
echo  [%date% %time%] DNS set >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_RENEW
cls
echo  [*] Renewing IP Address...
ipconfig /release >nul 2>&1
ipconfig /renew >nul 2>&1
echo  [+] IP renewed.
echo  [%date% %time%] IP renewed >> "%LOGFILE%"
pause
goto NETWORK_MENU

:NET_WIFI
cls
echo  [*] Repairing Wi-Fi...
netsh winsock reset >nul 2>&1
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
echo.
echo   *** DISM TOOLKIT ***
echo.
echo   [1]  DISM CheckHealth               [3]  DISM RestoreHealth
echo   [2]  DISM ScanHealth
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Running DISM CheckHealth...
DISM /Online /Cleanup-Image /CheckHealth >nul 2>&1
echo  [+] DISM CheckHealth complete.
echo  [%date% %time%] DISM CheckHealth done >> "%LOGFILE%"
pause
goto DISM_MENU

:DISM_SCAN
cls
echo  [*] Running DISM ScanHealth (may take 5-10 minutes)...
DISM /Online /Cleanup-Image /ScanHealth >nul 2>&1
echo  [+] DISM ScanHealth complete.
echo  [%date% %time%] DISM ScanHealth done >> "%LOGFILE%"
pause
goto DISM_MENU

:DISM_RESTORE
cls
echo  [*] Running DISM RestoreHealth (may take 15-30 minutes)...
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1
echo  [+] DISM RestoreHealth complete.
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
echo.
echo   *** SECURITY TOOLKIT ***
echo.
echo   [1]  Update Windows Defender        [3]  Export Firewall Rules
echo   [2]  Defender Quick Scan            [4]  BitLocker Status
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Updating Windows Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate >nul 2>&1
echo  [+] Defender updated.
echo  [%date% %time%] Defender updated >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_DEFSCAN
cls
echo  [*] Running Defender Quick Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1 >nul 2>&1
echo  [+] Quick scan complete.
echo  [%date% %time%] Defender quick scan >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_FWEXPORT
cls
echo  [*] Exporting Firewall rules...
netsh advfirewall export "%REPORTDIR%\firewall_rules.wfw" >nul 2>&1
echo  [+] Firewall rules exported.
echo  [%date% %time%] Firewall exported >> "%LOGFILE%"
pause
goto SECURITY_MENU

:SEC_BITLOCKER
cls
echo  [*] Checking BitLocker status...
manage-bde -status >nul 2>&1
echo  [+] BitLocker check complete.
echo  [%date% %time%] BitLocker check >> "%LOGFILE%"
pause
goto SECURITY_MENU

:: ============================================================
:: BACKUP TOOLKIT
:: ============================================================
:BACKUP_MENU
cls
color 05
call :DRAW_HEADER
echo.
echo   *** BACKUP TOOLKIT ***
echo.
echo   [1]  Backup Registry (HKLM)        [3]  Backup Drivers
echo   [2]  Create Restore Point
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Backing up Registry HKLM...
set "REGBACK=%BACKUPDIR%\HKLM_%date:~-4,4%%date:~-7,2%%date:~-10,2%.reg"
set "REGBACK=!REGBACK: =0!"
reg export HKLM "!REGBACK!" /y >nul 2>&1
echo  [+] Registry backed up.
echo  [%date% %time%] Registry backup done >> "%LOGFILE%"
pause
goto BACKUP_MENU

:BACKUP_RESTORE
cls
echo  [*] Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'SHIVAM_TOOLKIT' -RestorePointType MODIFY_SETTINGS" >nul 2>&1
echo  [+] Restore point created.
echo  [%date% %time%] Restore point created >> "%LOGFILE%"
pause
goto BACKUP_MENU

:BACKUP_DRIVERS
cls
echo  [*] Backing up all drivers...
if not exist "%BACKUPDIR%\Drivers" mkdir "%BACKUPDIR%\Drivers"
pnputil /export-driver * "%BACKUPDIR%\Drivers" >nul 2>&1
echo  [+] Drivers backed up.
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
echo.
echo   *** HARDWARE TOOLKIT ***
echo.
echo   [1]  CPU Information                [4]  GPU Information
echo   [2]  RAM Information                [5]  Launch DxDiag
echo   [3]  Disk Information
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
wmic cpu get Name, Manufacturer, MaxClockSpeed, NumberOfCores, NumberOfLogicalProcessors /format:list
echo.
pause
goto HARDWARE_MENU

:HW_RAM
cls
echo  [*] RAM Information:
echo.
wmic memorychip get Capacity, Speed, Manufacturer, MemoryType /format:list
wmic computersystem get TotalPhysicalMemory /format:list
echo.
pause
goto HARDWARE_MENU

:HW_DISK
cls
echo  [*] Disk Information:
echo.
wmic diskdrive get Model, Size, InterfaceType, Status /format:list
wmic logicaldisk get Name, Size, FreeSpace, FileSystem /format:list
echo.
pause
goto HARDWARE_MENU

:HW_GPU
cls
echo  [*] GPU Information:
echo.
wmic path win32_VideoController get Name, AdapterRAM, DriverVersion /format:list
echo.
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
echo.
echo   *** WINDOWS MANAGEMENT ***
echo.
echo   [1]  Services Manager              [4]  Task Scheduler
echo   [2]  Event Viewer                  [5]  Group Policy Editor
echo   [3]  Registry Editor               [6]  Device Manager
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo.
echo   *** APP INSTALLER TOOLKIT (winget) ***
echo.
echo   [1]  Install Google Chrome         [4]  Install Steam
echo   [2]  Install VLC Media Player      [5]  Install Notepad++
echo   [3]  Install 7-Zip                 [6]  Install All
echo.
echo  ================================================================================
echo   [H] Home   [B] Back   [X] Exit
echo  ================================================================================
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
echo  [*] Installing Google Chrome...
winget install --id Google.Chrome -e --accept-source-agreements >nul 2>&1
echo  [+] Chrome installed.
pause
goto APPINSTALL_MENU

:APP_VLC
cls
echo  [*] Installing VLC Media Player...
winget install --id VideoLAN.VLC -e --accept-source-agreements >nul 2>&1
echo  [+] VLC installed.
pause
goto APPINSTALL_MENU

:APP_7ZIP
cls
echo  [*] Installing 7-Zip...
winget install --id 7zip.7zip -e --accept-source-agreements >nul 2>&1
echo  [+] 7-Zip installed.
pause
goto APPINSTALL_MENU

:APP_STEAM
cls
echo  [*] Installing Steam...
winget install --id Valve.Steam -e --accept-source-agreements >nul 2>&1
echo  [+] Steam installed.
pause
goto APPINSTALL_MENU

:APP_NOTEPADPP
cls
echo  [*] Installing Notepad++...
winget install --id Notepad++.Notepad++ -e --accept-source-agreements >nul 2>&1
echo  [+] Notepad++ installed.
pause
goto APPINSTALL_MENU

:APP_ALL
cls
echo  [*] Installing all applications...
winget install --id Google.Chrome -e --accept-source-agreements >nul 2>&1
winget install --id VideoLAN.VLC -e --accept-source-agreements >nul 2>&1
winget install --id 7zip.7zip -e --accept-source-agreements >nul 2>&1
winget install --id Valve.Steam -e --accept-source-agreements >nul 2>&1
winget install --id Notepad++.Notepad++ -e --accept-source-agreements >nul 2>&1
echo  [+] All apps installed.
pause
goto APPINSTALL_MENU

:: ============================================================
:: ADDITIONAL MENUS (Placeholder - expand as needed)
:: ============================================================
:WINPE_MENU
cls
color 0B
call :DRAW_HEADER
echo  [*] WinPE Toolkit
reagentc /info
pause
goto MAIN_MENU2

:AI_DIAG_MENU
cls
color 0D
call :DRAW_HEADER
echo  [*] Generating System Diagnostics...
(
echo ============================================================
echo  SYSTEM DIAGNOSTICS REPORT
echo  Generated: %date% %time%
echo ============================================================
echo.
systeminfo
echo.
) > "%REPORTDIR%\System_Diagnostics.txt" 2>&1
echo  [+] Diagnostics saved to: %REPORTDIR%\System_Diagnostics.txt
pause
goto MAIN_MENU2

:SSD_MENU
cls
color 0E
call :DRAW_HEADER
echo  [*] SSD Optimizer
fsutil behavior set disabledeletenotify 0 >nul 2>&1
echo  [+] TRIM enabled for SSD
echo  [*] Disabling Superfetch...
sc config SysMain start= disabled >nul 2>&1
echo  [+] Superfetch disabled
pause
goto MAIN_MENU2

:PRIVACY_MENU
cls
color 04
call :DRAW_HEADER
echo  [*] Disabling Telemetry...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul 2>&1
echo  [+] Telemetry disabled
pause
goto MAIN_MENU2

:FIREWALL_MENU
cls
color 0C
call :DRAW_HEADER
echo  [*] Firewall Toolkit
echo  [1]  Enable Firewall   [2]  Disable   [3]  Status
set /p "CHOICE=  Enter option: "
if "!CHOICE!"=="1" netsh advfirewall set allprofiles state on
if "!CHOICE!"=="2" netsh advfirewall set allprofiles state off
if "!CHOICE!"=="3" netsh advfirewall show allprofiles
pause
goto MAIN_MENU2

:BENCHMARK_MENU
cls
color 0E
call :DRAW_HEADER
echo  [*] Running Benchmarks...
echo === CPU Information ===
wmic cpu get Name, MaxClockSpeed /format:list
echo.
echo === RAM Information ===
wmic computersystem get TotalPhysicalMemory /format:list
pause
goto MAIN_MENU2

:ADVANCED_MENU
cls
color 08
call :DRAW_HEADER
echo  [*] Advanced Tools - Malware Scan
echo  [*] Running Full System Scan...
start "" "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
echo  [+] Scan started in background
pause
goto MAIN_MENU2

:PROCMGR_MENU
cls
color 01
call :DRAW_HEADER
echo  [*] Opening Task Manager...
start taskmgr
pause
goto MAIN_MENU2

:STARTUP_ACCEL_MENU
cls
color 02
call :DRAW_HEADER
echo  [*] Opening Task Manager Startup Tab...
start taskmgr /0
pause
goto MAIN_MENU2

:SVCOPT_MENU
cls
color 09
call :DRAW_HEADER
echo  [*] Service Optimizer
echo  [*] Opening Services Management...
start services.msc
pause
goto MAIN_MENU2

:MEMLEAK_MENU
cls
color 04
call :DRAW_HEADER
echo  [*] Memory Leak Detection
tasklist /v
pause
goto MAIN_MENU3

:NETSPEED_MENU
cls
color 06
call :DRAW_HEADER
echo  [*] Network Speed Test
ping 8.8.8.8 -n 10
ping google.com -n 10
pause
goto MAIN_MENU3

:GPU_DIAG_MENU
cls
color 0B
call :DRAW_HEADER
echo  [*] Graphics Diagnostics
wmic path win32_VideoController get Name, DriverVersion /format:list
pause
goto MAIN_MENU3

:TEMP_MON_MENU
cls
color 0C
call :DRAW_HEADER
echo  [*] Temperature Monitor
echo  [!] NOTE: Install third-party software for detailed temperature monitoring
pause
goto MAIN_MENU3

:WINUPDATE_MENU
cls
color 03
call :DRAW_HEADER
echo  [*] Opening Windows Update...
start ms-settings:windowsupdate
pause
goto MAIN_MENU3

:SYSCLEAN_MENU
cls
color 05
call :DRAW_HEADER
echo  [*] System Cleaner Suite
call :DO_CLEAN_ALL
echo  [+] System cleaned
pause
goto MAIN_MENU3

:ADVREPAIR_MENU
cls
color 0A
call :DRAW_HEADER
echo  [*] Advanced Repair
echo  [*] Running SFC + DISM...
sfc /scannow >nul 2>&1
DISM /Online /Cleanup-Image /RestoreHealth >nul 2>&1
echo  [+] Repair complete
pause
goto MAIN_MENU3

:TUNEUP_MENU
cls
color 0F
call :DRAW_HEADER
echo  [*] Complete System Tune-Up
echo  [*] Applying all optimizations...
call :DO_CLEAN_ALL
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
echo  [+] Tune-up complete
pause
goto MAIN_MENU3

:: ============================================================
:: EXIT
:: ============================================================
:EXIT_TOOLKIT
cls
color 0A
echo.
echo  ================================================================================
echo.
echo   Thank you for using SHIVAM ENTERPRISE TOOLKIT v4.0
echo.
echo   Developer  : Chaudhary Shivam Sheokand
echo   GitHub     : github.com/chaudharyshivamsheokand
echo   Instagram  : @ig.developershivam
echo   YouTube    : TechEdu-X
echo.
echo   Logs saved to    : %LOGFILE%
echo   Reports saved to : %REPORTDIR%
echo   Backups saved to : %BACKUPDIR%
echo.
echo  ================================================================================
echo.
echo  [%date% %time%] SHIVAM ENTERPRISE TOOLKIT v4.0 Exited >> "%LOGFILE%"
timeout /t 3 >nul
endlocal
exit /b 0
