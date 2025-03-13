# resource "local_file" "foo" {
#   content  = var.content
#   filename = "/random/foo.txt"
# }

# variable "content" {
#   type        = string
#   description = "Content of the file to be created"

#   validation {
#     condition     = substr(var.content, 0, 4) == "foo-"
#     error_message = "The content value must be a valid word starting \"foo-\"."
#   }
# }

// complex count data type example:
# resource "aws_instance" "server" {
#   count = 4 # create four similar EC2 instances

#   ami           = "ami-a1b2c3d4"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Server ${count.index}"
#   }
# }


// provisioners in terraform
