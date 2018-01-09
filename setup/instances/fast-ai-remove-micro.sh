#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-687e0355
aws ec2 release-address --allocation-id eipalloc-aa586790
aws ec2 terminate-instances --instance-ids i-01b4a754a040798c5
aws ec2 wait instance-terminated --instance-ids i-01b4a754a040798c5
aws ec2 delete-security-group --group-id sg-2e1fe954
aws ec2 disassociate-route-table --association-id rtbassoc-e8f9b191
aws ec2 delete-route-table --route-table-id rtb-bcaed7da
aws ec2 detach-internet-gateway --internet-gateway-id igw-b94be3de --vpc-id vpc-f832cf9e
aws ec2 delete-internet-gateway --internet-gateway-id igw-b94be3de
aws ec2 delete-subnet --subnet-id subnet-e02a2487
aws ec2 delete-vpc --vpc-id vpc-f832cf9e
echo If you want to delete the key-pair, please do it manually.
