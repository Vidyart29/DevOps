provider "aws" {
    region = "us-east-1"
    version = "5.66.0"
}


# resource "terraform"
resource "aws_s3_bucket" "tf-name-s3-bucket" {
  # this is the bucket name which will get created in aws
  bucket = "my-tf-learn-bucket" 
}
