#!/bin/sh

if [[ $1 -eq 0 ]] ; then
  echo "Please specify the erlang version to install."
  exit 1
fi

ERLANG_EXTRA_CONFIGURE_OPTIONS="--disable-hipe --enable-smp-support --enable-threads --enable-kernel-poll --without-odbc --enable-darwin-64bit --without-javac" asdf install erlang $1
