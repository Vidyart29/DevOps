# Docs

### Terraform Lifecycle
![tf lifecycle](image-4.png)

#### Terraform is declarative

- Resource =  an object you want to manage in the cloud.
- Providers = (terraform plugins ) which let Terraform interact with cloud platforms and other services via their application programming interfaces (APIs).


### STATEs
DESIRED - KNOWN (.tfstate file)- ACTUAL

- Desired: Something i want in my cloud to be having that will define in main.tf file that is desired state 
- Known: the result of execution of desired state, on terraform apply gets stored in tfstate file that is known state. (it's a result of previous state. what terraform knows and has currently. ) (tfstate stores the mapping b/w tf objects and the objects in the cloud.)
- Actual: Something that i have in cloud (aws) is actual state..

NOTE: on terraform apply : tf always try to make the 'desired state' 'actual'.

## Commands and their explanation

- terraform plan
- terraform console
- terraform apply -refresh=false
- terraform plan -out iam.tfplan
- terraform apply "iam.tfplan"
- terraform apply -target=aws_iam_user.my_iam_user
- terraform destroy
- terraform validate : tf will check for error or syntax mistakes and suggest the accurate syntax.
![tf validate example](image.png)

- terraform fmt: it formate tf hcl syntax. we can use this command before commiting the code to the repository.
    Unformated Syntax
![alt text](image-2.png)

    Formatted Syntax
![alt text](image-3.png)

- terraform show : it show what is in the state. its a human readable output on the current state which is present state file.

- export TF_VAR_iam_user_name_prefix = FROM_ENV_VARIABLE_IAM_PREFIX
- export TF_VAR_iam_user_name_prefix=FROM_ENV_VARIABLE_IAM_PREFIX
- terraform plan -refresh=false -var="iam_user_name_prefix=VALUE_FROM_COMMAND_LINE"
- terraform apply -target=aws_default_vpc.default
- terraform apply -target=data.aws_subnet_ids.default_subnets
- terraform apply -target=data.aws_ami_ids.aws_linux_2_latest_ids
- terraform apply -target=data.aws_ami.aws_linux_2_latest
- terraform workspace show
- terraform workspace new prod-env
- terraform workspace select default
- terraform workspace list
- terraform workspace select prod-env

### Understanding Variables in Terraform

Piority of value taken from variables:
value passed from commandline > value passed from tfvars > value passed from variable block.

