#!/bin/bash

if [ $S3_ENV = "dev"] ; then
  echo "OK"
else
  echo "Env no set.
  exit 1
fi