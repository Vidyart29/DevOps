# Namd and tags
# Amazon Machine Image(AMI)
# instance type: t2.micro
#  http server 
# security group -> 80 tcp, 22 tcp, cidr["any-system/everywhere"] ["0.0.0.0/0"]

provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "http_server_sg" {
  name="http_server_sg"
  vpc_id = aws_vpc.example.id




    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}