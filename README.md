# XYZ - Strategy to Kickoff then Scale

|   |   |
|---|---|
|**Project Title**|XYZ - Strategy to Kickoff then Scale|
|**Author**|Joshua Phillips|

## Description

_What is it?_

This is a strategic plan to kick off and scale a DevOps / Cloud transformation journey for XYZ a fictional Fortune 100 Company. XYZ is a traditional on prem infrastructure shop that is interested in moving to the cloud as well as modernizing their product suite and architecture.

Currently Developers have been complaining about kickstarting new environments, long lead and cycle times for development, and a lack of consistency between their environments.

IT Operations has also been complaining about downtime during deployments and the quality of the code that has been released into production.

They want to migrate to the cloud and they’ve also been recently interested in containerization.

---

## Problem

_What problem is this solving?_

- Reducing lead and cycle times for developments
- Reducing downtime during deployments and frequency of operational incidents as a result of code being deployed into production
- Reducing the time and effort necessary to create new environments and improving the consistency between environments.

---

## Why

_How do we know this is a real problem and worth solving?_

- The XYZ engineering org is currently struggling to release new features more than once or twice a year and this is hurting their ability to stay competitive in their service offerings.
- Without the ability to easily recreate new environments developers and operations are often left in a state of analysis paralysis when attempting to make changes. Any new change can create large amounts of disruption and if environments are degraded it can take anywhere from hours to days to create a new environment leaving developers, operations, and QA teams frozen in their tracks until the environments come back online.
- Due to a lack of consistency between different environments it’s often difficult to ensure that tests are meaningful. There are lots of accounts of code fixes working in some environments and not others and the concept of production like environments is only vaguely understood.

---

## Success

_How do we know if we’ve solved this problem?_

- Let’s aim to improve deployment frequency across the org from 1-2 times per year to an average of 1-2 per month for 50% of development teams at XYZ in the first year
- Let’s codify all of our environment via infrastructure as code and let’s ensure that all environment changes in any tiers above sandbox are only applicable via infrastructure as code changes deployed through an audit-able CI/CD pipeline such as Gitlab CI/CD or Jenkins. (Whatever the client has on hand)
- Let’s pick either a greenfield project, a mobile application for IOS and Android that allows XYZ’s customers to do most of the major features of their website on their mobile devices. The mobile app already has an MVP but has not been released yet due to issues securing a new environment. We will release changes to the mobile APP at least once per 2 week sprint and we will deploy all of it’s composite infrastructure in the cloud.

---

## Audience

_Who are we building for?_

- XYZ customers
- XYZ Internal Stakeholders aka decision makers
- XYZ engineering

---

## What

_Roughly, what does this look like in the product?_

- Collaborate and train a small cross functional team compromising stakeholders at XYZ and members of Liatrio to build a fully automated cloud deployment continuous delivery process for the mobile application.
- Deliverables will also include production like test environments that are fully configured via source controlled infrastructure as code. This will allow us to define and deploy production and production like environments for the mobile application reliably and repeatedly.
- The mobile application will also be deployed using a loosely coupled microservice architecture allowing the cross functional team to make technical decisions and establish release cadences independently from the rest of engineering.
- Once these deliverables are complete we will then scale this process through the rest of the org by identifying brownfield applications that can be deployed using this same pattern. This will also allow members of the original cross-functional team to disseminate their knowledge of the process so the migration can begin to snowball.
- Liatrio will continue to assist cross functional teams in migrating brownfield apps to the new architecture and environments. Once XYZ is comfortable deploying more frequently in these cloud environments additional Liatrio teams will begin the work (either via cross-functional collaborative teams or as fully Liatrio staffed project teams of migrating other infrastructure and dependencies such as databases, caches, and other tooling to AWS environment. Liatrio will also assist in expanding the cloud management toolchain at XYZ to allow the operations teams to easily deploy and manage as many production like cloud environments as are necessary. This will allow for exciting new projects such as global expansions and cross regional failovers which allow for the capture of new and expanded markets as well as providing internal benefits such as increasing the ease of cost estimation and capacity planning for individual value streams.

---

## How

_What is the experiment plan?_

### Phase 1

Estimate: 12 weeks

Building a cross functional team and proving out the DevOps / Cloud capability at XYZ

**Milestones**

- Ramp up XYZ employees on cloud native technologies and processes while also delivering a single cross slice of functionality (for this exercise we are choosing the Mobile team) to a production like environment.
- Achieve a release cadence of 1 -2 times per iteration (up from the 1 -2 per year currently existing at XYZ)
- Codify all of our environment via infrastructure as code and ensure that all environment changes in any tiers above sandbox are only applicable via infrastructure as code changes deployed through an audit-able CI/CD pipeline such as Gitlab or Jenkins
- The team will use Kubernetes deployed on AWS (via EKS) to start. This will allow local development environments to be tested using a lightweight k8s framework such as k3s or minikube and allow helm charts to be tested for deployment locally as well as throughout the development and production tiers.
    - The cross functional team will collaborate on creating the following.
        - Local development environments
        - Production like AWS accounts with EKS all configured via Infrastructure as code (terraform, cdks, pulumi, etc.)
        - A trunk based continuous delivery pipeline capable of reliably building, testing, deploying, and rolling back changes as they are promoted throughout development tiers (local dev, int, staging, production) this can be done using a pattern such as The Three Musketeers (Make, Docker, Docker-Compose) to ensure that build and test steps are executed the same way between local-dev, integration, staging, and production)

**Team composition**

- **XYZ**
    - One or more senior members of Operations currently responsible for CI/CD pipelines and Operational support (if these are two separate teams then one member from each team is requested)
    - Two members of the Mobile app delivery team
    - One product owner
- **Liatrio**
    - One Technical Principal
    - Four Sr. DevOps Engineers

### Phase 2

Estimate 12 weeks

Containerizing and migrating more applications and functionality to EKS

**Milestones**

- Migrating three additional brownfield projects that have failed to meet business goals and are open to trying a new way of doing things. These apps are the Billing, Reporting, and Data-Explorer services.
- Containerizing all three apps and achieve a release cadence of 1 -2 times per iteration.
- A trunk based continuous delivery pipeline capable of reliably building, testing, deploying, and rolling back changes as they are promoted throughout development tiers

**Team Compositions**

Three teams consisting of similar profiles as Phase 1

- **XYZ**
    - One or more senior members of Operations currently responsible for CI/CD pipelines and Operational support (if these are two separate teams then one member from each team is requested)
    - Two members of the Mobile app delivery team
    - One product owner
- **Liatrio**
    - One Technical Principal
    - Four Sr. DevOps Engineers

**Phase 3 and Beyond**

Continue to migrate the other apps, migrate additional infrastructure dependencies such as the databases, message queues, caches, mail servers, automated testing suites, etc.

Staffing needs will vary depending on priorities and scale but I’d target trying to expand out Liatrio staff working across value streams in the org to help hit the larger organizational goal of average engineering team release cadence of > 1.5 times per iteration.

---

## When

_When does it ship and what are the milestones?_

### Estimates

(I’d normally approach this by asking each member of the team their estimates, getting best and worst case and then using and adjusted average of the two, for the sake of this exercise I’m just going to put some example estimates down)

- **Sprint 1**
    - Mobile application containerized
        - **Estimate:**
            - Best case: .5 Iterations
            - Worse case: 1.5 Iterations
            - Adjusted estimate: 1 iteration
- **Sprint 2**
    - AWS account provisioned via IaC
        - IAM policies / Config / Cloudwatch / Cloudtrail / Control Tower
            - **Estimate:**
                - Best case: 1 iteration
                - Worst case: 2 Iterations
                - Adjusted estimate: 1.5 iterations* (this type of estimate would potentially trigger redefining the milestone / sprint goals)
- **Sprint 3**
    - Network
        - VPC
            - Security Groups
            - DNS
            - Peering Connections
            - Customer Gateways to interact with existing
    - EKS

---
