#!/bin/bash
apt-get install python-appindicator;

BIN_LINK=/usr/local/bin/sound-output-switcher
if [ ! -f $BIN_LINK ]; then
    ln -Ls sound-output-switcher $BIN_LINK
fi

CONFIG_FILE=~/.config/autostart/sound-output-switcher.desktop
if [ ! -f $CONFIG_FILE ]; then
    cp autostart_conf $CONFIG_FILE
fi