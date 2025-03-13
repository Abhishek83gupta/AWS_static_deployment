#!/bin/bash

# Update the system
apt-get update -y
apt-get upgrade -y

# Install nvm (Node version manager) and Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm -v
nvm install --lts  # install latest node.js version
node -v

# Install git
apt-get install git -y
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
