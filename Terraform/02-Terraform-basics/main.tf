variable "iam_user_name_prefix" {
  type        = string # any, number, bool, list, map, set, object, tuple 
  # default     = "my_iam_user"
  # description = "description"
}


provider "aws" {
}
resource "aws_iam_user" "my_aws_iam_users" {
  # using tf hcl lang i can declare the no of user i want and terraform will check the state if the user is already present and increase the count by 1 then it will only create that user while keeping the desrired state. 
  count = 3
  name  = "${var.iam_user_name_prefix}_${count.index}"
}
 