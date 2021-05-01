@echo off
:: IW4x Startup Script


:: Your Game Server Port.
:: Make sure you Port Forward both TCP & UDP.
set GamePort=28960

:: Offline/LAN Mode
:: 0 - Send heartbeats to online server list.
:: 1 - Add to LAN section of server list, don't show to the public.
set LANMode=0

:: Your server.cfg file in userraw.
:: This is where you edit your configs for your server(s)
set ServerFilename=server.cfg


:: Mod Support
:: Example: ModfolderName=mods/bots
:: No Mod: ModfolderName=
set ModFolderName=


start iw4x.exe -dedicated +set fs_game "%ModFolderName%" +set sv_lanonly "%LANMode%" +set net_port "%GamePort%" +exec %ServerFilename% +set party_enable "0" +map_rotate
exit