#!/bin/bash

clisp_location="$(which clisp)"
base_location=/usr/local/bin/base

if [ ! $clisp_location ]; then
  echo "clisp is not installed. clisp must be installed to run base. Aborting."
  exit 1
fi

echo "#!$clisp_location" > $base_location &&
cat base.lisp >> $base_location &&
echo "base installed to $base_location" &&
echo "this repo can now be deleted"
