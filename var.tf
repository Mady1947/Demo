variable "ami" {
  type = "map"

  default = {
    "us-east-1" = "ami-03dbf9550d4620230"
    "us-west-1" = "ami-03dbf9550d4620231"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  default = "us-east-1"
}
