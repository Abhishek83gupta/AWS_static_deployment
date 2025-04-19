#!/bin/bash

# Update system packages
sudo yum update -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm -v
nvm install 16.20.2 # Install Node.js v16.20.2 (compatible with Amazon Linux 2)
source ~/.bashrc # Source .bashrc to ensure nvm is loaded in future shells
echo "Node version: $(node -v)"
echo "npm version: $(npm -v)"

# Install git
yum install git -y
git --version

# Getting the src code
git clone https://github.com/Abhishek83gupta/Todo-basic-project-.git
cd Todo-basic-project-/

# node_modules & serve installation
npm install 
npm install -g serve
serve -v

# creating artifact & running applications 
npm run build
cd dist
serve -p 80
