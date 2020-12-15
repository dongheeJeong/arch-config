#!/bin/sh

set -e

sudo pacman --noconfirm --needed -S ansible

# to use pacman Ansible module
ansible-galaxy collection install community.general

cd playbook
ansible-playbook main.yaml

