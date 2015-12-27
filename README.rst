ONOS-Ansible Installer
======================

Step by Step

1. Check variable in hosts and group_vars/{config.yml, version.yml}

2. Install Ansible if not installed

   `./install_ansible.sh`

3. Install ONOS Project

   `ansible-playbook -i hosts playbook.yml --ask-sudo-pass --ask-pass`



