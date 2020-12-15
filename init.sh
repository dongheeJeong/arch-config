#!/bin/sh

set -e

echo ""
echo "This script require sudo. (ex. pacman -S, ansible become)"
echo "If this script takes time too long, sudo may timeout and script may fail."
echo "If so, execute this script again. It will end in short time because previous execution do things."
echo ""
sudo echo "sudo success"

sudo pacman --noconfirm --needed -S ansible

# to use pacman Ansible module
ansible-galaxy collection install community.general

cd playbook
ansible-playbook main.yaml "$@"

