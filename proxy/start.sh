#!/bin/bash

screen -dmS "MC_BUNGEE" java -jar BungeeCord.jar
screen -r MC_BUNGEE
# https://www.linode.com/docs/guides/minecraft-with-bungee-cord/#running-bungeecord
# screen -r bungeecord -> screens the Bungee Console
# control+A then D -> quit the screen