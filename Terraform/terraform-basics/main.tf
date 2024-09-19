provider "aws" {

}

# resource "providerName_resourceType" "internalName_tfName_to_refer_that_resourceType"
resource "aws_s3_bucket" "tf-name-s3-bucket" {
  # this is the bucket name which will get created in aws
  bucket = "vidyas-tf-learn-bucket-01" 
}

# enable versioning by using a seperate resource
resource "aws_s3_bucket_versioning" "tf-name-s3-bucket-versioning"{
  # providerName_resourceType.internalName_tfName_to_refer_that_resourceType.id
  bucket = aws_s3_bucket.tf-name-s3-bucket.id
    versioning_configuration {
      status = "Enabled"
  }
}

output "aws_s3_bucket_versioning"  {
  value       = aws_s3_bucket.tf-name-s3-bucket.versioning[0].enabled
  sensitive   = true
  
}
output "aws_s3_bucket_complete_details" {
  value = aws_s3_bucket.tf-name-s3-bucket
  # sensitive=true
}

# created an iam user and tf was able to recognize that i didn't touch s3 bucket just added iam resource block to create a user.

# using resource, create a new iam user with reference name my_aws_iam_user and actual name in cloud as dev-iam-user
resource "aws_iam_user" "my_aws_iam_user" {
  name = "dev-iam-user-updated"
}

# fetch existing IAM user and display the output. ( using datasource )
data "aws_iam_user" "existing_iam_user" {
  user_name = "command_line_user"
}
# this is similar as of output in programming
output "iam_user_name_complete_details" {
  value = data.aws_iam_user.existing_iam_user
}

# output "iam_user_name_complete_details-1"{
#   value= aws_iam_user.existing_iam_user.user_name
# }
