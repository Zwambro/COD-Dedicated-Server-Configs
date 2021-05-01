@echo off
:: BO3 Dedicated Server Launcher
:: Created By: LeonLionHeart & Chase (https://chasehall.net)
:: Special endorsements (https://nexuscore.us)


:: Your Game Server Port.
:: Make sure you Port Forward both TCP & UDP.
set net_port=15001

:: Color Codes for Server Name
:: ^1 Red
:: ^2 Green
:: ^3 Yellow
:: ^4 Blue
:: ^5 Cyan
:: ^6 Pink
:: ^7 White
:: ^8 Depends on the map you playing.
:: ^9 Grey
:: ^0 Black

:: Server Name/Description (in server browser)
:: Stay away from known illegal characters, such as the pipe, using these will break the config. ( | )
set live_steam_server_name="^1A New BO3 Server"
set live_steam_server_description="Coming Soon"
:: These are the only two variables that use quotes surrounding what you enter. Do not add quotes anywhere else.

:: Playlist File
:: Sets the Playlist to use from the playlists.info file in the /machinecfg folder
set sv_playlist=1

:: Mod Support
:: Sets the mod the server will load, usermaps is the default mod that can be run with user made maps. 
:: Replace usermaps with mod ID to run a mod.
:: !!! YOU MUST BE SIGNED INTO A STEAM ACCOUNT FOR MODS TO DOWNLOAD !!!
:: To the line above, you can use Steam as a service or use the Steam client itself. Workshop anonymous downloads are broken for the T7 dedicated server.
:: Example: fs_game=771672355
:: No Mod: fs_game=usermaps
set fs_game=771672355

:: Private Server Password
:: Setting this will make your server password-protected.
set live_steam_server_password=

:: RCON Password
:: Used with tools like BO3 Remote Console/IW4MAdmin.
:: IW4MAdmin is incomplete, however it still works from the webfront, however, YMMV.
set rcon_password=

:: lobbyTimerStatusStartInterval
:: Sets the wait time between maps in the lobby in millisecond. 60000ms = 60 seconds.
set lobbyTimerStatusStartInterval=60000

:: Enables console log on the server
:: Basically g_log on older CODs but super broken. It does not generate a separate log if it is defined.
:: This is what is required for IW4MAdmin to work. However, RaidMax is still testing T7.
set g_log=1

:: Enables logging on the server, helpful for crashes or debug information. 
:: Setting 1 will buffer the write and 2 will not.
set logfile=2

start BlackOps3_UnrankedDedicatedServer.exe  +set sv_playlist %sv_playlist% +set fs_game %fs_game% +set g_log %g_log% +set logfile %logfile% +set net_port %net_port% +lobbyTimerStatusStartInterval %lobbyTimerStatusStartInterval% +set live_steam_server_name %live_steam_server_name% +set live_steam_server_description %live_steam_server_description% +set live_steam_server_password "%live_steam_server_password%" +rcon_password "%rcon_password%" %*
:: Please do not touch the line above unless you know you are doing.
exit

:: EXTRA INFO BELOW ::

:: Allows you to manually define the IP address of your server. 
:: Only advanced users should mess with this feature.
:: set net_ip

:: Unofficial way to run a config for advanced users. You must place these configs in /zone
:: exec default_dedicated.cfg