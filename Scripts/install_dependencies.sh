#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo rm -rf /usr/share/nginx/html/*
sudo cp -r /home/ec2-user/AWS-code-pipeline-project/* /usr/share/nginx/html/
sudo chown -R nginx:nginx /usr/share/nginx/html/

