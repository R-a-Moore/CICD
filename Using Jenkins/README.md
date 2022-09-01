# Using Jenkins

go to Jenkins

login

## Making a job

sidebar on left

new item

give name
select 'Freestyle project'
click 'ok'


give description
click 'discard old builds'
Max # of builds to keep: 3
leave rest blank, except for...

#### Build
add build step > Execute shell

In the field add `uname -a`


## Fail case

`myname -a` should fail, meaning the 