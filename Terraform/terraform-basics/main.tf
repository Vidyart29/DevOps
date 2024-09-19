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
  sensitive=true
}


