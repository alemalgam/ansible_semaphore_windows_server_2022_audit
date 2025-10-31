#!/bin/bash
# SSH Key Setup Script for Windows Clients

if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
fi

for host in 10.144.208.43; do
    echo "Copying SSH key to $host..."
    ssh-copy-id anadmin@$host
done

echo "SSH key setup completed."
