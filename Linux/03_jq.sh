#!/bin/bash
#
#
#
#Name: Avilash Acharya
#
#This script teaches us using AWS CLI and jq to parse json and get the names of VMs for the specified region
#
#


#Debug Modee

set -x

aws ec2 describe-instances | jq '.[][].Instances[] | .Tags[] | select(.Key=="Name")'


