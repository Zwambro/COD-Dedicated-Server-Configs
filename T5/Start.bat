@echo off
:: T5 Startup Script


:: Your Game Server Port.
:: Make sure you Port Forward both TCP & UDP.
set GamePort=28962

:: Map to start with
set Map=mp_nuked

:: Your server.cfg file in data.
:: This is where you edit your configs for your server(s)
set ServerFilename=server.cfg


:: Mod Support
:: Example: ModfolderName=mods/bots
:: No Mod: ModfolderName=
set ModFolderName=


start t5m.exe -mp -console +set dedicated 2 +set net_port %GamePort% +set fs_game "%ModFolderName%" +exec %ServerFilename% +map %Map%
exit