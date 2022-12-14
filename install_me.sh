#!/bin/sh

# Install Docker if not installed
if [ ! "$(command -v docker &> /dev/null)" ]
then
    echo "* * * * Installing Docker * * * *"
    sudo apt install docker.io -y
    sudo usermod -aG docker misaki
    # newgrp docker
else
    echo "* * * * Docker already installed * * * *"
fi

# Install Ansible if not installed
if [ ! "$(command -v ansible &> /dev/null)" ]
then
    echo "Installing Ansible"
    sudo apt-get update
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible vim
    sudo pip install boto boto3
    sudo apt install python-pip -y
    # pip list boto | grep boto
else
    echo "Ansible already installed"
fi

# boto (2.49.0)
# boto3 (1.17.112)
# botocore (1.20.112)

# Connect to cloud via ssh
# ssh -i boom.cer ubuntu@ec2-13-40-174-241.eu-west-2.compute.amazonaws.com