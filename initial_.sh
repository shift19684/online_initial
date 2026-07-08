#!/bin/bash

sleep 30

# Assign the path to a variable
DIR="/home/sudox/lim/"
URL="https://github.com/shift19684/limiter.git"

# Check if the directory exists
if [ -d "$DIR" ]; then
    #echo "Directory exists."
    sudo rm -rf "$DIR"
    sudo git clone "$URL" "$DIR"
   # sudo git -C "$DIR" pull
else
    #echo "Directory does not exist."
    sudo git clone "$URL" "$DIR"
fi