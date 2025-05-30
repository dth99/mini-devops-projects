sudo apt update -y        

# Install nginx
sudo apt install -y nginx  

# Enable and start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Create your site directory
sudo mkdir -p /var/www/dummysite
sudo chown -R $(whoami):$(whoami) /var/www/dummysite

# Configure nginx
cat <<EOF | sudo tee /etc/nginx/conf.d/dummy.conf
server {
    listen 80;
    server_name 13.232.106.151;  # Or your domain

    root /var/www/dummysite;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

# Test & reload
sudo nginx -t
sudo systemctl reload nginx
