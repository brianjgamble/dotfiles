#!/bin/sh

if [ -z "$1" ] ; then
  echo "Please specify the erlang version to install."
  exit 1
fi

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --without-odbc"
asdf install erlang $1
