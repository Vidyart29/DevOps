# how to read values from a map
# map is a key-value pair

variable "users"{
default={
    india: "country", 
    bruuu: "fname",
    raahh: "lname"
}
}
provider aws{
    region="us-east-1"
}

resource "aws_iam_user" "my_aws_iam_users" {
  for_each=var.users
  name=each.key
  tags={
    country:each.value 
  }
}