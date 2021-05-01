@echo off
::///////////////////////////////////////////////////////////////////////
::///  	         IW6x Server Configuration start-up file	  		  ///
::///////////////////////////////////////////////////////////////////////
::// This config best view with Notepad++ or other non-windows notepad //
::///////////////////////////////////////////////////////////////////////
::// 	Your edited server.cfg in the "main" folder goes here  	       //
:://	This is were you edit your hostname, map & gamemodes from.     //
::///////////////////////////////////////////////////////////////////////


set ServerFilename=server.cfg


:://///////////////////////////////////////////////////////////////////////////
::// 	What port do you want the server to run on?			  		         //
:://	You must port forward this port & allow it through your firewall     //
:://///////////////////////////////////////////////////////////////////////////
set port=27016


::///////////////////////////////////////////////////////////////////////
:://You're done!! WARNING!!! Don't mess with anything below this line  //
::///////////////////////////////////////////////////////////////////////

start iw6x.exe -dedicated +set net_port "%port%" +exec %ServerFilename% +map_rotate
