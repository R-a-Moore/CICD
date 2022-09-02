# move to base directory
cd

# stores an environment variable 
echo "DB_HOST=mongodb://54.75.91.25:27017/posts" | sudo tee -a /etc/environment

# moves to app directory
cd app

# moves to 
cd seeds

# uses seeds with db_host
node seed.js

# starts the app
npm start&