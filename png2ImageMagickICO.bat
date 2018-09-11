:: png2ImageMagickICO
:: Author  Oskar Kruschitz [hiiamok]
:: Date    11/09/2018

@echo off
set color=
set rcfile=
set help=
set icon=
set images=

:loop 
set arg=%1
if "%arg%" == "" goto args_done
if /i "%arg%" == "--color" set "color=%2"
if /i "%arg%" == "--rcfile" set "rcfile=%2"
if /i "%arg%" == "--help" set "help=true"
if not x%arg:.ico=%==x%arg% set "icon=%arg%"
if not x%arg:.png=%==x%arg% set "images=%images% %arg%"
shift
goto :loop

:args_done
IF /I "%help%"=="true" (
    echo png2ico 2018-09-11
    echo USAGE: png2ico icofile ^[--colors ^<num^>^] pngfile1 ^[pngfile2 ...^]
    goto :end
)

set cmd=%b2eincfilepath%\convert.exe %images%

IF NOT [%color%] == [] (
    set cmd=%cmd% -colors %color%
)

IF [%icon%] == [] (
    echo No Destination File Specified!
    goto :end
)

set cmd=%cmd% %icon%

%cmd%

:end