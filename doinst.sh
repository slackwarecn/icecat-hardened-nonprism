#!/bin/bash

## You should set your $HOME dir manually. I can't help to decide which user you are using :)

HOME="/home/live"
INIDIR=$(find $HOME/.mozilla/icecat -type d -name "*.default")

if [ -f $INIDIR/extensions.ini ]; then
	cp $INIDIR/extensions.ini $INIDIR/extensions.ini.orig
fi

install -Dm644 /usr/lib64/icecat-52.1.0/defaults/extensions.ini $INIDIR/extensions.ini
install -Dm644 /usr/lib64/icecat-52.1.0/defaults/user.js $INIDIR/user.js

