#!/bin/bash

#####################
# Author: Meet
# Date: 09/08/2024
# version: v1
# This script will report the AWS resource usage.
#######################

set-x

# AWS s3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets
aws s3 ls

# list EC2 Instances
echo "Print list of Ec2 instances"
aws ec2 describe-instances | jq '.Reservation[].Instance[].InstanceId'

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list Iam users
aws iam list-users
