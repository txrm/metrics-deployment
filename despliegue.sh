#!/bin/sh

set -eux

terraform init
terraform apply -auto-approve
ansible-playbook -i inventory.yml playbook.yml