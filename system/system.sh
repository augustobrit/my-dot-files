#!/bin/sh

TAG="[OS]"

echo -e "Initializing OS Configuration"

sudo apt autoremove
sudo apt update
sudo apt upgrade
