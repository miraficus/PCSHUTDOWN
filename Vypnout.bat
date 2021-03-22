@echo off
TITLE Timed PC Shutdown
:start
CLS
ECHO [31mShutdown your pc in:
ECHO [30m.[0m
ECHO [32m1[0m  [33m1 HOUR
ECHO [32m2  [33m30 MINUTES
ECHO [32m3  [33m15 MINUTES
ECHO [32mA  [31mAbort shutdown!
ECHO [32mE  [36mEnd program![0m

@CHOICE /C:123AE /N
IF ERRORLEVEL 5 GOTO end
IF ERRORLEVEL 4 GOTO four
IF ERRORLEVEL 3 GOTO three
IF ERRORLEVEL 2 GOTO two
IF ERRORLEVEL 1 GOTO one
GOTO end

:one
CLS
ECHO [31mYou have selected [33m1 HOUR![36m
shutdown /s /t 3600
timeout 5
GOTO start

:two
CLS
ECHO [31mYou have selected [33m30 MINUTES![36m
shutdown /s /t 1800
timeout 5
GOTO start

:three
CLS
ECHO [31mYou have selected [33m15 MINUTES![36m
shutdown /s /t 900
timeout 5
GOTO start

:four
CLS
ECHO [31mYou have selected [33mAbort shutdown![36m
shutdown /a
timeout 5
GOTO start

:end
CLS
ECHO [30m.[0m
ECHO [31mThis window will be closed![36m
timeout 5