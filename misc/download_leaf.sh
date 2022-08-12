#!/bin/sh
# https://github.com/eycorsican/leaf/releases/latest/download/libleaf-ios.zip
set -x

WD=`pwd`

curl -OL 'https://github.com/eycorsican/leaf/releases/download/v0.3.1/libleaf-ios.zip' \
       && mv libleaf-ios.zip /tmp/ \
       && unzip -o /tmp/libleaf-ios.zip -d /tmp \
       && mv /tmp/libleaf.a PacketTunnel/libleaf/ \
       && mv /tmp/leaf.h PacketTunnel/libleaf/
