provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "my_bs_iam_user" {
  name = "my_iam_user_abc"
  
}