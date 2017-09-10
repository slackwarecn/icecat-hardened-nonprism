#!/bin/bash

DOWNDIR=$(pwd)


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



