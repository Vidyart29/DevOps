provider "aws" {
  version = "~> 5.0"
  region  = "ap-south-1"
}

resource "aws_s3_bucket" "s3-bucket-tf-learn" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


