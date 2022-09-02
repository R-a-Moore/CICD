sudo apt-get update -y
  
sudo apt-get upgrade -y
  
# installs nginx
sudo apt-get install nginx -y

# installs nodejs npm
sudo apt-get purge nodejs npm -y

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install -y nodejs npm

# replaces default with reverse proxy
sudo cp -f rev_proxy /etc/nginx/sites-available/default

sudo systemctl restart nginx
  
sudo apt-get update -y

sudo apt-get upgrade -y

# moves into app
#back into base directory
cd
cd app

#installs npm
npm install express