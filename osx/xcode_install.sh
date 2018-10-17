#!/bin/bash

###
### Xcode Command Line
### -- I tried this on OS X El Capitan 10.11
###
echo "Installing XCode Command Line..."
sudo xcode-select -p
RESULT=$?
if [ $RESULT -eq 2 ]
    then
        check=$((sudo xcode-\select --install) 2>&1)
        echo $check
        str="xcode-select: note: install requested for command line developer tools"
        while [[ "$check" == "$str" ]];
        do
            osascript -e 'tell app "System Events" to display dialog "xcode command-line tools missing." buttons "OK" default button 1 with title "xcode command-line tools"'
            exit;
        done
    else
        echo
        echo '...'
        echo 'xcode-select is already installed.'
        echo '...'
        echo
fi

echo
