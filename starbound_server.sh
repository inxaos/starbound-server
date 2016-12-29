#!/bin/bash

APP_ID="367540"
/steamcmd/steamcmd.sh +@ShutdownOnFailedCommand 1 +@NoPromptForPassword 1 +login $STEAM_USERNAME $STEAM_PASSWORD +force_install_dir /opt/starbound/ +app_update $APP_ID +quit

cd /opt/starbound/linux64
./starbound_server
