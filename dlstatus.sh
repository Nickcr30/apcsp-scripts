#!/bin/bash

DROPLETS="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for droplet in $DROPLETS ; do
   ping -c 1 >/dev/null 2>&1 $droplet

  if [ $? = 0 ] ; then
      echo $droplet: Alive
  else
      echo $droplet: Dead
  fi
done
exit  0
