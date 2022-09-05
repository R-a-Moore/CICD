# CI / CD

[DevOps Pipeline, by Shahrukh khan](https://medium.com/@ahshahkhan/devops-culture-and-cicd-3761cfc62450)

![devops pipeline](https://user-images.githubusercontent.com/47668244/187894488-cb42b7f7-a7aa-40ca-930c-a0d0717d1e66.png)

DevOps (Development Operations), focuses around continuous incremental contribution to production, in an automated manner. Arguably the core tennants of DevOps is Continuous Integration & Continuous Deployment.

### Webhooks

[webhooks wiki](https://en.wikipedia.org/wiki/Webhook)

webhook automates the interaction between the developer and the next block/inidividual in line

when you order a takeaway, the system will listen for the completion of the order (selection, payment etc), and then carries on the process, rather than having someone sitting there waiting for it to be done so they can hand it off to the next person.

A webhook, is an integration which sits and listens and automates that step in the process, so that such processes are faster.

## CICD Pipelines

"Building a CI/CD pipeline is not a quick job, it takes time. But it is the backbone of DevOps" - Shahrukh Khan

[about , cicd pipeline](https://about.gitlab.com/topics/ci-cd/)

[gitlad docs cicd pipeline](https://docs.gitlab.com/ee/ci/introduction/)

![CI_CD pipeline](https://user-images.githubusercontent.com/47668244/187893901-32efbb00-93a9-4272-a1a9-46c38e0e7626.png)

## Continuous Integration

Continuous integration is both part of continuous delivery and continuous deployment.

continuous integration works up until testing, whereas delivery and deployment continue in the CICD workflow beyond into production.

## Continuous Deployment - Delivery & Deployment

When a product is delivered, it is ready.

When a product is deployed, it is provided/launched/etc.

The main difference between the two, is that; when continuous delivery is performed it must manually be deployed, but in continuous deployment it is done automatically.

## Jenkins

![jenkins logo](https://user-images.githubusercontent.com/47668244/188125848-3bcdc81e-d81a-4644-93e8-5947e2f91cc4.png)

Jenkins is an automation server, which helps automate the parts of software development related to building, testing and deploying; facilitating continuous integration and continuous delivery.

As Jenkins is open source, it has a number of benefits over other substitutes; it's free to use, supports a vast array of plugins, it is available to anyone, and is known to be user friendly.

### CICD pipeline With Jenkins

![CI_CD pipeline - with Jenkins](https://user-images.githubusercontent.com/47668244/188125984-62eb65c9-fc0c-4220-97ac-aaea00464c4c.png)

source>build>test>production

In production, the individual nodes (which you can see within the Jenkins stack of jobs), each job or node is often referred to as Master and Agent nodes, due to the latters' dependance on the former's activision (think slave/master nodes of code).

To follow this pipeline in action please follow the steps of:

- [Connecting to GitHub](https://github.com/R-a-Moore/CICD/blob/dev/Using%20Jenkins/GitHub/CONNECT_TO_GITHUB.md)
- [Webhooks on GitHub](https://github.com/R-a-Moore/CICD/blob/dev/Using%20Jenkins/GitHub/WEBHOOKS.md)
- [Merging Branches with Jenkins](https://github.com/R-a-Moore/CICD/blob/dev/Using%20Jenkins/GitHub/JENKINS_GIT_MERGE.md)
- [Deploying to AWS](https://github.com/R-a-Moore/CICD/blob/dev/Using%20Jenkins/DEPLOYING_TO_AWS.md)
