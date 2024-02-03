#!/bin/bash

serviceName=jans-fido2
warDeployName=fido2-server.war
boldGreen='\033[1;32m'
colorOff='\033[0m'
boldOff='\033[1m'

echo -e "⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼⎼"
echo -e "$boldOff➔$colorOff Stopping service $boldOff$serviceName$colorOff ⏱ ..."
service $serviceName stop
echo -e "$boldOff➔$colorOff $boldOff$serviceName$colorOff service Stopped $boldGreen✔$colorOff"
echo -e " ⠸⠸⠸ "
echo -e "$boldOff➔$colorOff Copying file $boldOff$warDeployName$colorOff ⏳..."
cp /root/$warDeployName /opt/jans/jetty/jans-fido2/webapps/jans-fido2.war
echo -e "$boldOff➔$colorOff $boldOff$warDeployName$colorOff file Copied $boldGreen✔$colorOff"
echo -e " ⠸⠸⠸ "
echo -e "$boldOff➔$colorOff Starting service $boldOff$serviceName$colorOff 🚀..."
service $serviceName start
echo -e "$boldOff➔$colorOff $boldOff$serviceName$colorOff service Started $boldGreen✔$colorOff"

