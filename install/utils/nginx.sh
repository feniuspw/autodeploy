echo "NGINX INSTALL SCRIPT"

echo "Updating repository"
sudo apt update

echo "Installing Nginx"
sudo apt install -y nginx

echo "Enabling Nginx service"
sudo systemctl enable nginx

echo "Starting Nginx service"
sudo systemctl start nginx

echo "Done!"
