ONOS-Ansible Installer
======================

Installation of ONOS building enviroments

Required

- Ansible
- If not install, please use `install_ansbile_from_ppa.sh`

Step by Step

1. Check variable in hosts and group_vars/config.yml

2. Install by script

   `ansible-playbook -i hosts playbook.yml -k -K --connection=local`

