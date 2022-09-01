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

