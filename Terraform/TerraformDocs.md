# Docs

- Resource =  an object you want to manage in the cloud.
- Providers = (terraform plugins ) which let Terraform interact with cloud platforms and other services via their application programming interfaces (APIs).


### STATEs
DESIRED - KNOWN - ACTUAL

desired: state i want in my cloud
known: is a result of previous state. what terraform knows and has currently. 
Actual: whatever i have in aws.