#!/bin/bash

unamestr=$(uname -a)
if [[ "$unamestr" == *'Darwin'* ]] 
then 
  bash ./osx/launch.sh;
elif [[ "$unamestr" == *'Linux'* ]]
then
  if grep -q Microsoft /proc/version
  then
    bash ./windows/launch.sh;
  fi
fi