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
ECHO [32mA  [31mPrerusit vypnuti!
ECHO [32mE  [36mUkoncit program![0m

@CHOICE /C:12345AE /N
IF ERRORLEVEL 7 GOTO end
IF ERRORLEVEL 6 GOTO abort
IF ERRORLEVEL 5 GOTO five
IF ERRORLEVEL 4 GOTO four
IF ERRORLEVEL 3 GOTO three
IF ERRORLEVEL 2 GOTO two
IF ERRORLEVEL 1 GOTO one
GOTO end

:one
CLS
ECHO [31mZvolili jste [33m15 MINUT![36m
shutdown /s /t 900
timeout 5
GOTO start

:two
CLS
ECHO [31mZvolili jste [33m30 MINUT![36m
shutdown /s /t 1800
timeout 5
GOTO start

:three
CLS
ECHO [31mZvolili jste [33m1 HODINU![36m
shutdown /s /t 3600
timeout 5
GOTO start

:four
CLS
ECHO [31mZvolili jste [33m2 HODINY![36m
shutdown /s /t 7200
timeout 5
GOTO start

:five
CLS
ECHO [31mZvolili jste [33m4 HODINY![36m
shutdown /s /t 14400
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