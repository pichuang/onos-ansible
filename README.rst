ONOS-Ansible Installer
======================

Installation of ONOS building enviroments

Requirements

- RAM 4GB or higher
- Ubuntu 14.04 LTS
- Ansible 2.1.0 or higher
  - If not install, please use `utils/install_ansbile_from_ppa.sh`

Step by Step

1. Check variables in `group_vars/config.yml`

2. Set up ONOS Build Machine

   `ansible-playbook playbook.yml -K --connection=local`
