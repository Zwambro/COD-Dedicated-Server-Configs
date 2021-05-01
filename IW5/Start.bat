@echo off
:: Paste your server key below from https://platform.plutonium.pw/serverkeys
set key=placeServerKeyHere
:: Name of the config file the server should use.
set cfg=server.cfg
:: Port used by the server.
set port=28960
:: What game are we using? (t4sp, t4mp, iw5mp, t6mp, t6zm)
set game=iw5mp
:: Only change this when you don't want to keep the bat files in the game folder. MOST WON'T NEED TO EDIT THIS!
set gamepath=%cd%

:: Do not edit anything below unless you know what you are doing.
cd /D %LOCALAPPDATA%\Plutonium
start /abovenormal bin\plutonium-bootstrapper-win32.exe %game% "%gamepath%" -dedicated +set key %key% +sv_config %cfg% +net_port %port%