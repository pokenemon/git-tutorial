#!/bin/bash

if [ $riff_env = "dev"] ; then
  echo "OK"
else
  echo "Env no set.
  exit 1
fi