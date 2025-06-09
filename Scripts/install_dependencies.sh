#!/bin/bash

echo "Running install_dependencies.sh for static site using Nginx"

# Update packages
sudo yum update -y

# Install Nginx if not already installed
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Clean default html folder
sudo rm -rf /usr/share/nginx/html/*

# Copy project files (e.g., index.html) to Nginx's root
sudo cp -r /home/ec2-user/my-app/* /usr/share/nginx/html/

# Set correct permissions
sudo chown -R nginx:nginx /usr/share/nginx/html/

echo "Static site files deployed to /usr/share/nginx/html/"
