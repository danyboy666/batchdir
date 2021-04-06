@echo off

:verif
if not "%1"=="" goto main  
command /c exit 0
set batdir=\bat               
cd %batdir%
:: 27 valeures maximum par var
set arr1=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
set arr2=22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37
goto main

:main
cls
echo =================================================================
echo.
echo Scripts available in %batdir%
echo.
dir /w *.bat
echo.
echo =================================================================     
echo Type the script name. 
echo CRTL+C to quit script.
echo Press "." to execute batch file.
echo.
echo Execute : %1.bat
choice /N /c:1234567890abcdefghijklmnopqrstuvwxyz.
for %%a in (%arr1%) do if errorlevel %%a set err=%%a
if not %err%=="" for %%a in (%arr2%) do if errorlevel %%a set err=%%a  
goto fn%err%

:fn37
%1.bat
goto :end

:fn36
%0 %1z
goto :end

:fn35
%0 %1y
goto :end

:fn34
%0 %1x
goto :end

:fn33
%0 %1w
goto :end
     
:fn32
%0 %1v
goto :end
     
:fn31
%0 %1u
goto :end
     
:fn30
%0 %1t
goto :end

:fn29
%0 %1s
goto :end

:fn28
%0 %1r
goto :end

:fn27
%0 %1q
goto :end

:fn26
%0 %1p
goto :end

:fn25
%0 %1o
goto :end

:fn24
%0 %1n
goto :end

:fn23
%0 %1m
goto :end

:fn22
%0 %1l
goto :end

:fn21
%0 %1k
goto :end

:fn20
%0 %1j
goto :end

:fn19
%0 %1i
goto :end

:fn18
%0 %1h
goto :end

:fn17
%0 %1g
goto :end

:fn16
%0 %1f
goto :end

:fn15
%0 %1e
goto :end

:fn14
%0 %1d
goto :end

:fn13
%0 %1c
goto :end

:fn12
%0 %1b
goto :end

:fn11
%0 %1a
goto :end

:fn10
%0 %10
goto :end

:fn9
%0 %1%err% 
goto :end

:fn8
%0 %1%err% 
goto :end

:fn7
%0 %1%err% 
goto :end

:fn6
%0 %1%err% 
goto :end

:fn5
%0 %1%err% 
goto :end

:fn4
%0 %1%err% 
goto :end

:fn3
%0 %1%err% 
goto :end

:fn2
%0 %1%err% 
goto :end

:fn1
%0 %1%err%
goto end

:end
