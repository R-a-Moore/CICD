# Deploying to AWS EC2

- create ec2 - create security group - allow Jenkins ip to ssh in, as well as any other rules required

- create a 3rd job in Jenkins; to get the code from main branch and copy (SCP) to the ec2 - run the script to install node, with any other required dependencies.

- the 3rd job must only be triggered if the second job was successful

- first iteration; run npm install & npm start manually

(delivery)

- 4th job; if above worked (if 3rd job was successful), launch the app

- pm2 kill all - create a 5th job to create DB_HOSR=db-ip

- npm start