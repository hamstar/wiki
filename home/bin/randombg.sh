#!/bin/bash

# This is a random wallpaper changer for Gnome (3)

WALL_DIR=$HOME/Pictures/walls;
cd $WALL_DIR;
while [ 1 ]
  do
  set — *
  length=$#
  random_num=$(( $RANDOM % ($length + 1) ))
  gsettings set org.gnome.desktop.background picture-uri "file:$WALL_DIR/${!random_num}"
#  echo "Changed to $WALL_DIR/${!random_num}";
  sleep 300;
done
