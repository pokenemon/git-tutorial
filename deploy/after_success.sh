#!/bin/bash
sudo pip install awscli;
sudo apt-get install jq;
mkdir -p /vat/tmp/release;
tar -zcf /var/tmp/release/kawabata.tar.gz --exclude ".git" ./;
if [ "$TRAVIS_BRANCH" =~ /^dev.*$/ ]; then 
  DEV_DEPLOY_BRANCH="$TRAVIS_BRANCH"
fi
echo $DEV_DEPLOY_BRANCH
