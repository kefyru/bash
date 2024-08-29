#!/bin/bash
# to install: sh -c "$(curl -fsSL https://raw.githubusercontent.com/kefyru/bash/main/srv.sh)"
# default utils for ubuntu server
sudo apt update
sudo apt install mc vim nano ranger
sh -c "$(curl -fsSL https://raw.githubusercontent.com/kefyru/bash/main/zsh.sh)"
