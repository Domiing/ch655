#!/bin/bash

echo "Discord Hosting" | figlet -f doom
echo "Starting your server!"
echo "Make sure to upload some files if you haven't!"
echo "Like to edit this startup script? Contact us!"
echo "............................."

if [[ ! -z ${NODE_PACKAGES} ]]; then
/usr/local/bin/npm install ${NODE_PACKAGES}; 

fi; 
if [[ ! -z ${UNNODE_PACKAGES} ]]; then 
/usr/local/bin/npm uninstall ${UNNODE_PACKAGES}; 

fi;

echo "----------------------------";
echo "Running your bot!";
echo "Confused? Click the files tab to start uploading your bot!";
echo "Contact support if you need help :D";
echo "----------------------------";

if [[ {{AUTO_UPDATE}}  == "1" ]]; then
/usr/local/bin/npx nodemon /home/container/{{BOT_JS_FILE}};
else
node /home/container/{{BOT_JS_FILE}}; 
fi;
