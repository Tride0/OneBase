# Update WSL
sudo apt-get update
sudo apt-get upgrade
sudo apt update
sudo apt upgrade

# sh is Bash alias
sudo ls -l /bin/sh
sudo rm /bin/sh
sudo ln -s /usr/bin/bash /bin/sh
sudo ls -l /bin/sh

# Install Missing
sudo apt-get install Texinfo make g++ gcc bison
