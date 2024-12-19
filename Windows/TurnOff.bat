@echo off
TITLE Timed PC Shutdown
:start
CLS
ECHO [31mShutdown your pc in:
ECHO [30m.[0m
ECHO [32m1[0m  [33m15 MINUTES
ECHO [32m2  [33m30 MINUTES
ECHO [32m3  [33m1 HOUR
ECHO [32m4  [33m2 HOURS
ECHO [32m5  [33m4 HOURS
ECHO [32mA  [31mAbort shutdown!
ECHO [32mE  [36mEnd program![0m

@CHOICE /C:12345AE /N
IF ERRORLEVEL 7 GOTO end
IF ERRORLEVEL 6 GOTO abort
IF ERRORLEVEL 5 GOTO 4h
IF ERRORLEVEL 4 GOTO 2h
IF ERRORLEVEL 3 GOTO 1h
IF ERRORLEVEL 2 GOTO 30m
IF ERRORLEVEL 1 GOTO 15m
GOTO end

:15m
CLS
ECHO [31mYou have selected [33m15 MINUTES![36m
shutdown /s /t 900
timeout 5
GOTO start

:30m
CLS
ECHO [31mYou have selected [33m30 MINUTES![36m
shutdown /s /t 1800
timeout 5
GOTO start

:1h
CLS
ECHO [31mYou have selected [33m1 HOUR![36m
shutdown /s /t 3600
timeout 5
GOTO start

:2h
CLS
ECHO [31mYou have selected [33m2 HOURS![36m
shutdown /s /t 7200
timeout 5
GOTO start

:4h
CLS
ECHO [31mYou have selected [33m4 HOURS![36m
shutdown /s /t 14400
timeout 5
GOTO start

:abort
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