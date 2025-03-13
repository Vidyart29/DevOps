terraform {
  backend "remote" {
    organization = "bytes-of-terraform"
    workspaces{
      name= "Bytes-Of-Terraform-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.16"
    }
  }
  required_version = ">= 0.12"
}

provider "aws" {
  region = "ap-south-1"
}

# SYNTAX:  resource "provider_type" "resource_name"
resource "aws_instance" "app_server" {
  ami           = "ami-0c50b6f7dc3701ddd"
  instance_type = "t2.micro"
  tags={
    Name="state-mgmt-learn-ec2-inst"
  }
}

