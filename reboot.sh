#!/bin/bash
ansible -i libvirt-inventory.py test -b  -m reboot
ansible -i libvirt-inventory.py test -m wait_for -a port=22
