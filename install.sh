#!/bin/bash

if [ $(which clisp) ]; then
  cp base.lisp /usr/local/bin/base
  echo "base installed to /usr/local/bin/base"
else
  echo "clisp is not installed. clisp must be installed to run base. Aborting."
fi
