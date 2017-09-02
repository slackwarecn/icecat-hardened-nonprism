#!/bin/bash

DOWNDIR=$(pwd)

# Download the ublock add-on.
UBLOCK=1.11.4
SOURCE=("https://addons.cdn.mozilla.net/user-media/addons/607454/ublock_origin-${UBLOCK}-an+fx+sm+tb.xpi")
/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || echo "This add-on may not be downloaded."

# Download the User-Agent Switcher.
SOURCE=("https://addons.mozilla.org/firefox/downloads/latest/user-agent-switcher-firefox/addon-578976-latest.xpi")
/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || echo "This addon may not be downloaded successfully."


# Download the noscript add-on.
NS=5.0.5
SOURCE=("https://secure.informaction.com/download/releases/noscript-${NS}.xpi")
/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || echo "This addon may not be downloaded successfully."
#unzip -qqo "noscript-${NS}.xpi" -d "noscript-${NS}"

#_extension_id="$(sed -n '/.*<em:id>\(.*\)<\/em:id>.*/{s//\1/p;q}' noscript-${NS}/install.rdf)"
#_extension_dest="$PKG/usr/lib64/icecat-$ICVER/browser/extensions/${_extension_id}"

#  if grep '<em:unpack>true</em:unpack>' noscript-${NS}/install.rdf > /dev/null; then
#    install -dm755 "${_extension_dest}"
#    cp -R noscript-${NS}/* "${_extension_dest}"
#    chmod -R ugo+rX "${_extension_dest}"
#  else
#    install -Dm644 noscript-${NS}.xpi "${_extension_dest}.xpi"
#  fi

## Since Icecat ships with the following features, you don't need to download and enable them.

# Download the Disable-WebRTC add-on.
#SOURCE=("https://addons.mozilla.org/firefox/downloads/latest/happy-bonobo-disable-webrtc/addon-497366-latest.xpi")
#/usr/bin/wget -c -P $DOWNDIR -t 5 $SOURCE || true; echo "This addon may not be downloaded successfully."
#install -Dm755 "${SOURCE##*/}" $PKG/$DESTDIR/jid1-5Fs7iTLscUaZBgwr@jetpack.xpi

# Download the no-resource-uri-leak add-on.
#NRUL=1.1.0
#SOURCE=("https://addons.cdn.mozilla.net/user-media/addons/706000/no_resource_uri_leak-${NRUL}-an+tb+sm+fx.xpi")
#/usr/bin/wget -c -t 5 $SOURCE || true; echo "This addon may not be downloaded successfully."
#install -Dm755 "${SOURCE##*/}" $PKG/$DESTDIR/@no-resource-uri-leak.xpi

