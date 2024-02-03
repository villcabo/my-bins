#!/bin/bash

serviceName=jans-auth
warDeployName=jans-auth-server.war
boldGreen='\033[1;32m'
colorOff='\033[0m'
boldOff='\033[1m'

echo -e "⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼"
echo -e "$boldOff➔$colorOff Stopping service $boldOff$serviceName$colorOff ⏱ ..."
service $serviceName stop
echo -e "$boldOff➔$colorOff $boldOff$serviceName$colorOff service Stopped $boldGreen✔$colorOff"
echo -e " ⠸⠸⠸ "
echo -e "$boldOff➔$colorOff Copying file $boldOff$warDeployName$colorOff ⏳..."
cp /root/$warDeployName /opt/jans/jetty/jans-auth/webapps/jans-auth.war
echo -e "$boldOff➔$colorOff $boldOff$warDeployName$colorOff file Copied $boldGreen✔$colorOff"
echo -e " ⠸⠸⠸ "
echo -e "$boldOff➔$colorOff Starting service $boldOff$serviceName$colorOff 🚀..."
service $serviceName start
echo -e "$boldOff➔$colorOff $boldOff$serviceName$colorOff service Started $boldGreen✔$colorOff"

