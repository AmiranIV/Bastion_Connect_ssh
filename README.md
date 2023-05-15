# Bastion_Connect_ssh
Bash Script to connect from your local to your Private EC2 on Private Subnet (aws) using Bsation Host (Public EC2 on Public Subnet) in your VPC

Requirements create an architecture on a VPC on aws.
Private EC2 inside a Private subnet with no internet Gateway, with inbound rules allowing only the Public EC2 Premissions to connect from.
Public EC2 inside a Public Subnet. 
Same .pem Key file from AWS.
