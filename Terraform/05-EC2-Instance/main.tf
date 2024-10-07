# Namd and tags
# Amazon Machine Image(AMI)
# instance type: t2.micro
#  http server 
# security group -> 80 tcp, 22 tcp, cidr["any-system/everywhere"] ["0.0.0.0/0"]

provider "aws" {
  region = "ap-south-1"
}

