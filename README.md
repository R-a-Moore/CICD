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

### CICD Workflow

![CI_CD pipeline(1)](https://user-images.githubusercontent.com/47668244/187893933-4c97c785-b7d1-4745-ad96-7508ff525684.png)

source>build>test>production

## Continuous Integration

Continuous integration is both part of continuous delivery and continuous deployment.

continuous integration works up until testing, whereas delivery and deployment continue in the CICD workflow beyond into production.

## Continuous Deployment - Delivery & Deployment

When a product is delivered, it is ready.

When a product is deployed, it is provided/launched/etc.

The main difference between the two, is that; when continuous delivery is performed it must manually be deployed, but in continuous deployment it is done automatically.

## Jenkins

Jenkins is an automation server, which helps automate the parts of software development related to building, testing and deploying; facilitating continuous integration and continuous delivery.

As Jenkins is open source, it has a number of benefits over other substitutes; it's free to use, supports a vast array of plugins, it is available to anyone, and is known to be user friendly.



### SSH-keys From Jenkins to AWS
