#!bin/bash
#
#Name : Avilash Acharya
#
#This script explains the diff betwn awk vs cut
#


echo "Using of cut command"

aws ec2 describe-instances | jq '.[][].Instances[].UsageOperationUpdateTime' | cut -d "T" -f 1 | cut -d "-" -f 3,1


echo "Using of awk command"

aws ec2 describe-instances | jq '.[][].Instances[].UsageOperationUpdateTime' | cut -d "T" -f 1 | awk -F "-" '{print $3,$1}'
