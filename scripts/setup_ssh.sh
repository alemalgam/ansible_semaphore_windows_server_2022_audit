#!/bin/bash
# SSH Key Setup Script for Windows Clients

if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
fi

for host in 192.168.1.20; do
    echo "Copying SSH key to $host..."
    ssh-copy-id administrator@$host
done

echo "SSH key setup completed."
