## Pushing to github

build new item as normal

### Office 365 Selector

select 'Restrict where this project can be run'

in Label expression, select 'sparta-ubuntu-node'

(in case of a warning appearing, press backspace on the field, then select the same thing. warning should go away)
generate new ssh key in your .ssh folder, called jen122, on localhost
(jen122, jen122.pub)

make ssh keys

add key to repo (repo settings --> deploy keys --> copy/paste public key cat and give it a name)

### make a new job in jenkins

add eng122.pub file to github in the rep where you have the app folder add private key to Jenkins

give name, description

github project: give it the HTTP url

## source code management

 give it the git SSH url

credentials - click add > jenkins - 

kind: ssh  username with private key

Username: give it a (relevant) name

enter directly --> add --> cat and copy over your public key into the field

in the credentials field, select your key that you've just added

should be the appropriate branch `main` in this case

## build triggers

tick 'GitHub hook trigger for GITScm polling'

### Build environment

select 'Provide Node & npm bin/ folder to PATH'

### Build

execute shell: 
```
cd app
npm install
npm test
```

MAKE SURE THE CORRECT PATH IS PROVIDED SO THAT JENKINS CAN NAVIGATE TO THE APP FOLDER IN YOUR GIT REPO

## Save

Build Now