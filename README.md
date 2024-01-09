# XYZ Strategy to Kick Off And Scale

*Project Title*	XYZ - Strategy to Kickoff then Scale 
*Author*	Joshua Phillips

### Description
- This is a strategic plan to kick off and scale a DevOps / Cloud transformation journey for XYZ a fictional Fortune 100 Company. XYZ is a traditional on prem infrastructure shop that is interested in moving to the cloud as well as modernizing their product suite and architecture. 
- Currently Developers have been complaining about kickstarting new environments, long lead and cycle times for development, and a lack of consistency between their environments. 
- IT Operations has also been complaining about downtime during deployments and the quality of the code that has been released into production. 
They want to migrate to the cloud and they’ve also been recently interested in containerization.

### Problem
- Reducing lead and cycle times for developments 
- Reducing downtime during deployments and frequency of operational incidents as a result of code being deployed into production
- Reducing thetime and effort necessary to create new environments and improving the consistency between environments. 

### Why
- The XYZ engineering org is currently struggling to release new features more than once or twice a year and this is hurting their ability to stay competitive in their service offerings.  
- Without the ability to easily recreate new environments developers and operations are often left in a state of analysis paralysis when attempting to make changes. Any new change can create large amounts of disruption and if environments are degraded it can take anywhere from hours to days to create a new environment leaving developers, operations, and QA teams frozen in their tracks until the environments come back online. 
- Due to a lack of consistency between different environments it’s often difficult to ensure that tests are meaningful. There are lots of accounts of code fixes working in some environments and not others and the concept of production like environments is only vaguely understood. 

### Success
- Increase deployment frequency across the org from 1-2 times per year to an average of 1-2 per month for 50% of development teams at XYZ in the first year
- Codify all of our environment via infrastructure as code and let’s ensure that all environment changes in any tiers above sandbox are only applicable via infrastructure as code changes deployed through an audit-able CI/CD pipeline such as Gitlab CI/CD or Jenkins. (Whatever the client has on hand)
- A greenfield / slightly brownfield project such as a mobile application for IOS and Android that allows XYZ’s customers to do most of the major features of their website on their mobile devices. The mobile app already has an MVP but has not been released yet due to issues securing a new environment. We will release changes to the mobile APP at least once per 2 week sprint and we will deploy all of it’s composite infrastructure in the cloud. 

### Audience
- XYZ customers
- XYZ Internal Stakeholders aka decision makers
- XYZ engineering 

### What
- Collaborate and train a small cross functional team compromising stakeholders at XYZ and members of Liatrio to build a fully automated cloud deployment continuous delivery process for the mobile application. 
- Deliverables will also include production like test environments that are fully configured via source controlled infrastructure as code. This will allow us to define and deploy production and production like environments for the mobile application reliably and repeatedly.
The mobile application will also be deployed using a loosely coupled microservice architecture allowing the cross functional team to make technical decisions and establish release cadences independently from the rest of engineering.
- Once these deliverables are complete we will then scale this process through the rest of the org by identifying brownfield applications that can be deployed using this same pattern. This will also allow members of the original cross-functional team to disseminate their knowledge of the process so the migration can begin to snowball.
- Liatrio will continue to assist cross functional teams in migrating brownfield apps to the new architecture and environments. Once XYZ is comfortable deploying more frequently in these cloud environments additional Liatrio teams will begin the work  (either via cross-functional collaborative teams or as fully Liatrio staffed project teams of migrating other infrastructure and dependencies such as databases, caches, and other tooling to AWS environment. Liatrio will also assist in expanding the cloud management toolchain at XYZ to allow the operations teams to easily deploy and manage as many production like cloud environments as are necessary. This will allow for exciting new projects such as global expansions and cross regional failovers which allow for the capture of new and expanded markets as well as providing internal benefits such as increasing the ease of cost estimation and capacity planning for individual value streams. 

### How
What is the experiment plan? 

 


### When
When does it ship and what are the milestones?


### Supplemental Links
- [XYZ - Strategy to Kick-Off Then Scale Research Doc ](https://whimsical.com/xyz-strategy-to-kickoff-then-scale-653R4DcaJwCqNJVthHAaJf)
- [XYZ - Now / Next / Later Milestone and Team Planning Doc](https://whimsical.com/xyz-now-next-later-5xydyAG2TpNYPD4ySWiWjp)
- [XYZ - Pre-Mortem](https://whimsical.com/xyz-detailed-implementation-plan-KhybSdzyUh1fKdUcB3pxz8)
 
  


