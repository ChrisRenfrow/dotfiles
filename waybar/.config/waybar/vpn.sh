#! /bin/bash

STATUS=$(mullvad status | grep -Po '\KConnect(ed|ing)|Disconnected|Blocked')
RELAY=$(mullvad relay get |	grep -Po 'city\s\K[a-z]{3},\s[a-z]{2}')
echo "$STATUS ($RELAY)"
