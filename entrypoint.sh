#!/bin/sh
echo $(pwd)
if [ "$1" = "" ]; then
  echo "ssserver -c ./config.json"
  ssserver -c ./config.json
else
  if [ "$2" = "" ]; then
    if [ "$1" = "ssserver" ]; then
      echo "ssserver -c ./config.json"
      ssserver -c ./config.json
    elif [ "$1" = "sslocal" ]; then
      echo "sslocal -c ./config.json"
      sslocal -c ./config.json
    else
      echo sh -c "$@"
      $@
    fi
  else
    echo sh -c "$@"
    $@
  fi
fi
