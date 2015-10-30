#!/bin/bash

SCRIPT_DIR=~/.open_list
APP_DIR=/Applications

app_list="apps.list"
chrome_list="chrome_tabs.list"

cd $SCRIPT_DIR

while read line
do
  open "$APP_DIR/$line.app"
done < $SCRIPT_DIR/$app_list

while read -r line
do
  open $line
done < $SCRIPT_DIR/$chrome_list
