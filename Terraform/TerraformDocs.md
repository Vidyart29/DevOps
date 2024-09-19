# Docs

#### Terraform is declarative

- Resource =  an object you want to manage in the cloud.
- Providers = (terraform plugins ) which let Terraform interact with cloud platforms and other services via their application programming interfaces (APIs).


### STATEs
DESIRED - KNOWN - ACTUAL

- Desired: Something i want in my cloud to be having that will define in main.tf file that is desired state 
- Known: the result of execution of desired state on terraform apply gets stored in tfstate file that is known state. (it's a result of previous state. what terraform knows and has currently. )
- Actual: Something that i have in cloud (aws) is actual state..

NOTE: on terraform apply : tf always try to make the 'desired state' 'actual'.

