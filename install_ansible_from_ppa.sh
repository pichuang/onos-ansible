#!/bin/bash

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

Install_Ansible
