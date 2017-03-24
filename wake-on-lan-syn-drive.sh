#!/bin/bash
# mac addresss stored in private config outside of dotfiles
# requires etherwake package installed

private_config="$HOME/mount-network-drive-private.cfg"

# source the private confit file if exists:
if [ -f "$private_config" ]
then
  source "$private_config"
else
  echo >&2 "# Could not source private config"
  exit 1
fi

sudo etherwake $macaddress
