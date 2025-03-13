1. The for_each meta-argument accepts : set of string and map
2. You were working with different terraform scripts which are provisioning various sets of resources , you need to look up for some additional details related to one specific resource from the state file. Which terraform command will help you achieve this? - terraform state list ADDRESS
3. The Terraform language supports user-defined functions - false
4. Can we use dynamic blocks to generate meta-argument blocks such as lifecycle and provisioner blocks? - false
   why? - A dynamic block can only generate arguments that belong to the resource type, data source, provider, or provisioner being configured. It is not possible to generate meta-argument blocks such as lifecycle and provisioner blocks, since Terraform must process these before it is safe to evaluate expressions.
5. terraform import command updates the configuration files as well as the state file, with the details of the infrastructure being imported. - false
6. You intend to import two resources to your terraform configuration. You executed only the terraform import command until now and it worked. Will the terraform apply work if executed now? - 
7. Is Terraform Cloud workspaces same as Terraform CLI Workspaces. - No
8. Which environment variable is exported to set a different log level in the terraform? - TF_LOG
9. Passing an object containing a sensitive input variable to the keys() function will result in a list that is _ . - sensistive
10. the meta-argument which is not supported by the data block - lifecycle
11. Select the available arguments that are available for the lifecycle meta-argument - ignore_changes, prevent_destroy, create_before_destroy
12. Which of the following can be used to determine the length of a given list, map, or string. - lenght()
13. You have been working on a terraform configuration file. When you run terraform plan, you see an output as shown below that states that the resource "local_file.pet must be replaced". What is the cause for this? - file permission was changed

# local_file.pet must be replaced
-/+ resource "local_file" "pet" {
        content              = "We love pets!"
        directory_permission = "0777"
      ~ file_permission      = "0777" -> "0700" # forces replacement
        filename             = "/root/pet.txt"
      ~ id                   = "5f8fb950ac60f7f23ef968097cda0a1fd3c11bdf" -> (known after apply)
    }

14. What does the "terraform show" command use to provide details of the Infrastructure? - state file
15. Which of the options can be used to run a terraform apply without confirmation? - -auto-approve
16. What allows Terraform to make use of a declarative approach? - terraform makes use of state file
17. 