### Install Ansible Master
sudo apt install openssh-server -y
sudo usermod -aG sudo misaki
sudo apt-get update
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
sudo apt install python-pip -y
sudo pip install boto boto3
sudo apt-get install python-boto -y
# pip list boto | grep boto
# sudo ansible --version


### Configure ssh acess to Ansible Host

### Setting up Ansible Host and testing connection