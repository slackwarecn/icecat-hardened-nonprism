#!/bin/bash

DOWNDIR=$(pwd)

# Download the EFF Privacy Badger add-on. But may be incompatible via such way of installation.
EFF=
SOURCE=("https://www.eff.org/files/privacy-badger-latest.xpi")
/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || echo "This add-on may not be downloaded."


# Download the noscript add-on.
NS=10.1.9.9
SOURCE=("https://secure.informaction.com/download/releases/noscript-${NS}.xpi")
/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || echo "This addon may not be downloaded successfully."




