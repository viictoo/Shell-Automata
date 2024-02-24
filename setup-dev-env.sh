#!/bin/bash

bashrc_url='https://github.com/viictoo/Shell-Automata/blob/main/dotfiles/profile'

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install Git
sudo apt-get install git -y

# Configure Git
echo "Enter your Git username:"
read git_username
git config --global user.name "$git_username"
echo "Enter your Git email:"
read git_email
git config --global user.email "$git_email"

# Install Python pip and set up a virtual environment
sudo apt install python3 python3-pip python3-venv ipython3 -y

# Install curl
sudo apt-get install curl -y
                            
# Fetch a custom .bashrc file from GitHub
#echo "Enter the URL of your .bashrc file on GitHub:"
#read bashrc_url

# setup terminal
curl -o ~/.profile $profile_url
source ~/.profile

# Install curl
sudo apt-get install curl -y

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Install the latest stable release of Node.js
nvm install --lts

# Test Node.js installation
node --version

