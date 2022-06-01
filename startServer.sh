# This suppresses the console window’s desire to display each command in the batch file as they are executed.
set echo off

while :
do

    # Executes SteamCMD to check for server updates and apply if needed.
    /steamcmd/steamcmd.exe +login anonymous +force_install_dir c:\rustserver\ +app_update 258550 +quit

    # -batchmode -> Opens Unity in non-GUI mode, and eliminates the need for any human intervention.
    # +server.port 28015 -> Rust client connection port.
    # +server.level "Procedural Map" -> The map type to use. Options are "Procedural Map","Barren",”HapisIsland”,”SavasIsland” and “SavasIsland_koth”
    # +server.seed 1234 -> Determines shape of procedural and barren maps (used with server.worldsize). Values range from 0 to 2147483647.
    # +server.worldsize 4000 -> Determines shape of procedural and barren maps (used with server.seed). Values range from 1000 to 6000.
    # +server.maxplayers 10 -> Number of players that can be connected
    # +server.hostname "Name of Server as Shown on the Client Server List" -> Name of the server as shown on the client’s server list
    # +server.description "Description shown on server connection window." -> Description shown on the client’s server connection window
    # +server.url "http://yourwebsite.com" -> A valid website. Causes the “View Webpage” button to appear on the connection window
    # +server.headerimage "http://yourwebsite.com/serverimage.jpg" -> A valid link for the connection window background image. Use a JPG image of 512 x 256.
    # +server.identity "server1" -> The directory name used as the parent for all the server files. Do not use spaces or special characters.
    # +rcon.port 28016 -> Rcon client connection port.
    # +rcon.password letmein -> The password required for Rcon access. Do not use spaces or special characters.
    # +rcon.web 1 -> Uses websocket connection mode for rcon (recommended)
    # goto start -> Instructs the batch file to jump to the ‘start’ label. Remove this line if you do not want your server to automatically restart after it shuts down.
    RustDedicated.exe -batchmode +server.port 28015 +server.level "Procedural Map" +server.seed 1234 +server.worldsize 4000 +server.maxplayers 10  +server.hostname "Name of Server as Shown on the Client Server List" +server.description "Description shown on server connection window." +server.url "http://yourwebsite.com" +server.headerimage "http://yourwebsite.com/serverimage.jpg" +server.identity "server1" +rcon.port 28016 +rcon.password letmein +rcon.web 1

done
