terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# provider block
provider "aws" {
  # this is asia-mumbai region
  region = "ap-south-1"
}

# resource block
resource "aws_instance" "app_server" {
  ami           = "ami-0c50b6f7dc3701ddd"
  instance_type = "t2.micro"

  # tags to give name to resource
  tags = {
    # Name = "vidya_ExampleAppServerInstance_tf"
    Name = var.instance_name
  }

  #   user_data= <<EOF
  # #!/bin/bash
  # echo "Hello world" > index.html

}

