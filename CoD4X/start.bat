@echo off
:: CoD4X Startup Script


:: Your Game Server Port.
:: Make sure you Port Forward both TCP & UDP.
set GamePort=14004

:: Your server.cfg file in main.
:: This is where you edit your configs for your server(s)
set ServerFilename=server.cfg

:: Your server key
:: https://cod4master.cod4x.me/index.php?token_generator=true
set Key=


:: Mod Support
:: Example: ModfolderName=mods/bots
:: No Mod: ModfolderName=
set ModFolderName=



start cod4x18_dedrun.exe +set dedicated 2 +set sv_authtoken "%Key%" +set net_port %GamePort% +exec %ServerFilename% +set fs_game "%ModFolderName%" +map_rotate
exit
