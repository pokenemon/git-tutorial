#!/bin/sh
if [ `echo $TRAVIS_BRANCH | grep ^dev-.*$` ] ; then
  DEV_DEPLOY_BRANCH=$TRAVIS_BRANCH
fi
echo $DEV_DEPLOY_BRANCH
