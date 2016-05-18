#!/bin/bash

MASTER_HOSTNAME=$(hostname)

function Install_Ansible() {

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' ansible | grep "install ok installed")
if [ "" == "$PKG_OK" ]; then
    echo "No ansible. Install ansible."
    sudo apt-get update
    sudo apt-get install -y software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible
    ansible --version
fi

}

function Replace_Hostname() {

if ! grep --quiet $MASTER_HOSTNAME hosts; then
    sed -i "s/onos_build_machine/$MASTER_HOSTNAME/g" hosts
fi

}

function Install_ONOS() {

ansible-playbook -i hosts playbook.yml -k -K --connection=local

}

Install_Ansible
Replace_Hostname
Install_ONOS
