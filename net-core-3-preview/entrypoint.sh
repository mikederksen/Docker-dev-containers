#!/bin/ash

# Generate host keys with empty passwords
ssh-keygen -A
exec /usr/sbin/sshd -D -e "$@"