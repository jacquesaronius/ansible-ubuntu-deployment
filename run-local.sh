#!/bin/bash
apt update && apt install ansible -y
ansible-playbook --connection=local -i ./hosts ansible-integration.yml
ansible-playbook --connection=local -i ./hosts deploy.yml