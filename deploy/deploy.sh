#!/bin/bash

set -ux

clf_template_name="3-6_cloudformation_instance_parameters.template"


export AWS_DEFAULT_REGION=ap-northeast-1
export AWS_ACCESS_KEY_ID=`echo $DEV_AWS_ACCESS_KEY_ID`
export AWS_SECRET_ACCESS_KEY=`echo $DEV_AWS_SECRET_ACCESS_KEY`

echo "AWS_ACCESS_KEY_ID: $AWS_ACCESS_KEY_ID"

echo "## create new ec2 instance"
clf_stack_name="deploy-test-`date +%s`"
template_dir=$(cd $(dirname $0) $$ pwd)

aws cloudformation create-stack --stack-name "$clf_stack_name" --template-body file://deploy/dev/"$clf_template_name"

if [ $? != 0 ]; then
 exit 1
fi

echo "wait until create-stack"