#!/bin/bash

echo "Running start_server.sh for static site using Nginx"

# Restart Nginx to ensure new content is loaded
sudo systemctl restart nginx

# Optionally confirm status
sudo systemctl status nginx

echo "Nginx restarted. Static site should be live on port 80."

