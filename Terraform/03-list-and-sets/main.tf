variable "names" {
#   default=["vidya", "m", "rautela"  ]
default=["add_new_ele","vidya", "m", "rautela"  ]
}
provider "aws" {
    region = "us-east-1"
}
resource "aws_iam_user" "my_aws_iam_users" {
  # using tf hcl lang i can declare the no of user i want and terraform will check the state if the user is already present and increase the count by 1 then it will only create that user while keeping the desrired state. 
#   count = 3
#   name  = "${var.iam_user_name_prefix}_${count.index}"
    # count=length(var.names)
    # name= var.names[count.index]
    for_each = toset(var.names)
    name= each.value
}

# terraform console experiments
# > var.names
# [
#   "vidya",
#   "m",
#   "rautela",
# ]
# > var.names[0]
# "vidya"

# > reverse(var.names)
# [
#   "rautela",
#   "m",
#   "vidya",
# ]

# > distinct(var.names)
# tolist([
#   "vidya",
#   "m",
#   "rautela",
# ])

# > concat(var.names, ["new_value_concatenated"])
# [
#   "vidya",
#   "m",
#   "rautela",
#   "new_value_concatenated",
# ]
# > sort(var.names)
# tolist([
#   "m",
#   "rautela",
#   "vidya",
# ])
# > range(10)
# tolist([
#   0,
#   1,
#   2,
#   3,
#   4,
#   5,
#   6,
#   7,
#   8,
#   9,
# ])
# >

# > range(1, 10, 2)
# tolist([
#   1,
#   3,
#   5,
#   7,
#   9,
# ])

