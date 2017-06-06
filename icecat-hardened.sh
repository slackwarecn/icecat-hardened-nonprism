#!/bin/sh

##############################################
# Icecat-Hardened Jail and Cleaner Script #
##############################################
echo "Closing any other instances of Icecat to avoid crashes..."
pkill -x icecat
wait
# echo "Copying Hardened Prefs..."
# cp /usr/lib/iceweasel/browser/defaults/preferences/iceweasel-branding.js /usr/lib/iceweasel/browser/defaults/preferences/firefox-branding.js
# wait
echo "Waking the Icecat..."

# Trap cleaner function for Icecat exit cleaning
#function finish {
# echo "Removing hardened preferences..."
# echo "" > /usr/lib/iceweasel/browser/defaults/preferences/firefox-branding.js
#    }

## Firejail Iceweasel startup
## /usr/bin/firejail --profile=/etc/firejail/icecat.profile --noroot --nogroups --caps.drop=all --private-etc=nsswitch.conf,resolv.conf  --private-bin=bash,icecat --private-tmp --private-dev /usr/bin/icecat --private-window

/usr/bin/firejail --profile=/etc/firejail/icecat.profile /usr/bin/icecat 1>$HOME/.firejail-icecat.output 2>&1

## Exiting Iceweasel triggers the trap
#trap finish EXIT
