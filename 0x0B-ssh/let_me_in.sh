#!/bin/bash

# Server details
server=35.153.98.251
user="ubuntu"

# SSH public key
ssh_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC56GJ6WyHKHYCW/70y20TWpIKLY1gYbbb5d6r7ALzMp3A1T8Aw+qGADZs0sjNIrJhJNK6AqB9gsgvuoit1BCWJ4FUQzcXxi1yC6fjKzvpSFKUfVPKUbgek4BjVO00/A9jcO/lPAlnbISUG/yQg2z6e94Q53kCefIlotfvbFvKFIDIWrjT7r+p8vtwoHygjIN7j2XXrwko23IidEAhqUOypXpGgokfGlJJTNwL9wsb+uPbFsE5HLY3iVP3KvY0spVKAO9RJYoBJmaXnymhc+8lX2imGw/L9i08Bs3s31/cQsIZiqy6kt8bMF223vOoT4mK3k9pfa1JKlqkBxi5YdeKj13YPCmmRdi1hokxBGgJ4nkYfvoGjQ/NxHD5pdTZ/aeE7IAYy+q7ElreIqO4Ctfuh0KAsrPiuaprehjyVYOZ3xmnGQEau9GGaZ9Pzl3H0zY8zdj2GGjInYDL5UD53ZsYAwKmhbgcFF74ax/Zi0CtwGAFIShnuU53teMtXKDpAVWxenPS8haKnfZh4q044BRitc4QspdXz+VJySizdRey0nv/GHS48UDfFJc9E7bFNcQf9ajPrWQcoD4cMwwydgGYfzYUVPnUTmEIOgPvAjon7ZkdffWXeoVB07BlRmSFVgBmf2v7aKQdz7zw3Y9fofMGaD41mSkXQHJhI7TpQ"

# Connect to the server and add the SSH public key to authorized_keys
ssh ubuntu@35.153.98.251 "mkdir -p ~/.ssh && echo \"$ssh_public_key\" >> ~/.ssh/authorized_keys && chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"

echo "SSH public key added to the server for user '$user'."
