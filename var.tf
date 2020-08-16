variable "ami" {
  region = "ap-south-1"
  type = map(string)

  default = {
       "us-east-1" = "ami-04169656fea786776"
       "us-west-1" = "ami-006fce2a9625b177f"
  }
}

variable "instance_count" {
  default = "2"
}

variable "instance_tags" {
  type = list(string)
  default = ["Terraform-1", "Terraform-2"]
}

variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  default = "ap-south-1"
}
