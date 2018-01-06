#!/bin/bash

source aws-alias.sh

aws-start

ssh -i /Users/vinod/.ssh/aws-key-fast-ai.pem ubuntu@ec2-34-216-96-203.us-west-2.compute.amazonaws.com

