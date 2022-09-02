# Deploying to AWS EC2

- create ec2 - create security group - allow Jenkins ip to ssh in, as well as any other rules required

- create a 3rd job in Jenkins; to get the code from main branch and copy (SCP) to the ec2 - run the script to install node, with any other required dependencies.

- the 3rd job must only be triggered if the second job was successful

- first iteration; run npm install & npm start manually

(delivery)

- 4th job; if above worked (if 3rd job was successful), launch the app

- pm2 kill all - create a 5th job to create DB_HOSR=db-ip

- npm start

### Create an EC2

Create new EC2 instance as normal (which will be blank for this example, as its new). Ensuring that its security group allows the Jenkins' delivery job (port 8080) ip to access the instance on SSH.

## Connecting to the Instance w/ a New Job

Back On Jenkins we want to create a third/new job to perform the delivery.

automate key authentication: ssh -A -o `ssh -A -o "StrictHostKeyChecking=no" ubuntu@deploy_public_ip <<EOF` otherwise if you use a normal ssh connection command, the first time when you launch an ec2 instance, it will ask for key permission. If that prompt times out, then the connection fails and you will not be able to carry out the rest of the task.

## Deployment

Now we'll want to create another job.

This one will access the ec2 instance and make it live; by executing the `npm start`

Noe that before that, we'll need to - pm2 kill all (to stop the npm start that might already be running) - to create DB_HOSR=db-ip