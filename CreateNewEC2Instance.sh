#!/bin/bash

aws ec2 run-instances \
    --image-id ami-0abcdef1234567890 \
    --instance-type t2.micro \
    --security-group-ids sg-0b0384b66d7d692f9 \
    --associate-public-ip-address \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=name,Value=tapas}]'