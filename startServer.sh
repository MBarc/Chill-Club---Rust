#!/bin/sh
clear while : do
  exec ./RustDedicated -batchmode -nographics \
  -server.port 28015 \
  -rcon.ip IPAddressHere \
  -rcon.port 28016 \
  -rcon.password "changeme" \
  -server.maxplayers 75 \
  -server.hostname "Chill Club" \
  -server.identity "vanilla_server" \
  -server.level "Procedural Map" \
  -server.seed 12345 \
  -server.worldsize 3000 \
  -server.saveinterval 300 \
  -server.globalchat true \
  -server.description "The official Rust server for Chill Club!" \
  -server.url "chillclub.online"
  echo "\nRestarting server...\n" done
