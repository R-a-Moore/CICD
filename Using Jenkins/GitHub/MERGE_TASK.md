# Merge Task

- create a dev branch on your github repo

- commit changes from dev branch

- create a new job in Jenkins called 'name'-ci-merge

- if the tests passed, code gets merged to main branch

- create 3rd job to get code from main and deploy on AWS in a running ec2 instance (make sure the deploy works with port 8080)

## Carrying Out The Task

### Create a dev branch

enter `git checkout -b dev` into the git bash, when situated into the appropriate directory.

then add, commit and push those changes to the repo

## Create A New Job to Merge

(Create a new job like normal)

### Create a Job

New Item > give it a name

Give it an appropriate description.

- Tick 'Discard old builds'
- Github project > provide a Project url
- Office 365 Connector > Tick 'Restrict where this project can be run' > select 'sparta-ubuntu-node'
- Source Code Management > Git: 
    - in Repository URL input the HTTP code url of your repo (`git@github.com:R-a-Moore/CICD.git`). Select / add a key.
    - in Branch Specifiier enter your development branch `*/dev`
    - Additional Behaviours > add > Merge before build

### Add a Webhook

Add a webhook into your github repository
`http://18.133.180.208:8080/job/christian-ci-merge/`

