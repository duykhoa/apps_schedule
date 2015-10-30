#!/bin/bash

APP_DIR=/Applications
app_list="apps.list"
chrome_list="chrome_tabs.list"

while read -r line
do
  open $APP_DIR/$line.app
done < $app_list

while read -r line
do
  open $line
done < $chrome_list
