#!/bin/bash

# Does the user want the latest version
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  rm -rf /opt/sickrage
  #git clone https://github.com/SiCKRAGETV/SickRage.git /opt/sickrage
  git clone -b develop --single-branch https://github.com/SiCKRAGETV/SickRage.git /opt/sickrage
  chown -R nobody:users /opt/sickrage
fi
