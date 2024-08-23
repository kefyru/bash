#!/bin/bash
sudo apt update
if [ -z "$ZSH_CUSTOM" ]
then
  echo "zh not installed"
  exit 1
fi

echo "continue"
