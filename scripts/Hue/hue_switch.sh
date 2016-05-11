#!/bin/sh

# the hue ruby gem is requried
# installation: sudo gem install hue

DATE=`date "+%d.%m.%Y-%H:%M:%S"`
STATEON=/tmp/hue.state.on
STATEOFF=/tmp/hue.state.off
LOGFILE=/tmp/hue.log
HUEBIN=/usr/local/bin/hue

if [ -f $STATEON ]; then
  $HUEBIN all off > /dev/null
  rm -f $STATEON
  touch $STATEOFF

  echo "state: off $DATE" > $LOGFILE
else
  $HUEBIN all on > /dev/null
  rm -f $STATEOFF
  touch $STATEON

  echo "state: on $DATE" > $LOGFILE
fi
