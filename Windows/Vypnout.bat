@echo off
TITLE Casovane vypnuti pocitace Shutdown
:start
CLS
ECHO [31mVypnout pocitac za:
ECHO [30m.[0m
ECHO [32m1[0m  [33m15 MINUT
ECHO [32m2  [33m30 MINUT
ECHO [32m3  [33m1 HODINU
ECHO [32m4  [33m2 HODINY
ECHO [32m5  [33m4 HODINY
ECHO [32m6  [33m6 HODIN
ECHO [32m7  [33m8 HODIN
ECHO [32m8  [33m10 HODIN
ECHO [32m9  [33m12 HODIN
ECHO [32mA  [31mPrerusit vypnuti!
ECHO [32mE  [36mUkoncit program![0m

@CHOICE /C:123456789AE /N
IF ERRORLEVEL 11 GOTO end
IF ERRORLEVEL 10 GOTO abort
IF ERRORLEVEL 9 GOTO 12h
IF ERRORLEVEL 8 GOTO 10h
IF ERRORLEVEL 7 GOTO 8h
IF ERRORLEVEL 6 GOTO 6h
IF ERRORLEVEL 5 GOTO 4h
IF ERRORLEVEL 4 GOTO 2h
IF ERRORLEVEL 3 GOTO 1h
IF ERRORLEVEL 2 GOTO 30m
IF ERRORLEVEL 1 GOTO 15m
GOTO end

:15m
CLS
ECHO [31mZvolili jste [33m15 MINUT![36m
shutdown /s /t 900
timeout 5
GOTO start

:30m
CLS
ECHO [31mZvolili jste [33m30 MINUT![36m
shutdown /s /t 1800
timeout 5
GOTO start

:1h
CLS
ECHO [31mZvolili jste [33m1 HODINU![36m
shutdown /s /t 3600
timeout 5
GOTO start

:2h
CLS
ECHO [31mZvolili jste [33m2 HODINY![36m
shutdown /s /t 7200
timeout 5
GOTO start

:4h
CLS
ECHO [31mZvolili jste [33m4 HODINY![36m
shutdown /s /t 14400
timeout 5
GOTO start

:6h
CLS
ECHO [31mZvolili jste [33m6 HODIN![36m
shutdown /s /t 21600
timeout 5
GOTO start

:8h
CLS
ECHO [31mZvolili jste [33m8 HODIN![36m
shutdown /s /t 28800
timeout 5
GOTO start

:10h
CLS
ECHO [31mZvolili jste [33m10 HODIN![36m
shutdown /s /t 36000
timeout 5
GOTO start

:12h
CLS
ECHO [31mZvolili jste [33m12 HODIN![36m
shutdown /s /t 43200
timeout 5
GOTO start

:abort
CLS
ECHO [31mZvolili jste [33mAbort shutdown![36m
shutdown /a
timeout 5
GOTO start

:end
CLS
ECHO [30m.[0m
ECHO [31mToto okno bude zavreno![36m
timeout 5