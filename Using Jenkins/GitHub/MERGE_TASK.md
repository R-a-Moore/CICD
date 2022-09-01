# Merge Task

### The Task
- create a dev branch on your github repo

- commit changes from dev branch

- create a new job in Jenkins called 'name'-ci-merge

- if the tests passed, code gets merged to main branch

- create 3rd job to get code from main and deploy on AWS in a running ec2 instance (make sure the deploy works with port 8080)

## Explanation

So let's give a debrief of all that we've just done.

When we are developing software, we obviously don't want to be working on the main/deployment branch all of the time, as this is where delivery will occur and if changes are pushed to it which cause errors, it means your working/production code is now faulty.

So we make development branchs. Where we develop from our working code, and push changes into. So that if any merge errors or faults are apparent in the code, it won't affect our main/production branch.

However we don't want to be manually pushing our working dev branch into our main branch when we've got it working everytime. So we will want to automate it.

We will do this by using a webhook to listen for when a commit has been pushed to the dev branch. The wbhook will alert the right Jenkins job.

The Jenkins job will test if the commit has errors. If not, and the test succeeds, then it will merge the two branches.

## Carrying Out The Task

### Create a dev branch

enter `git checkout -b dev` into the git bash, when situated into the appropriate directory.

then add, commit and push those changes to the repo

### Create A New Job to Merge

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

### Git Publisher

Scroll to bottom

Add post-build action > Git Publisher

Tick 'Push Only If Build Succeeds'

Tick 'Merge Results'


