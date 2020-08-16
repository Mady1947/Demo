
provider "aws" {
  region  = "us-east-2"
}
variable "ami" {
  type = map(string)
  
  default = {
       "ap-south-1" = "ami-03dbf9550d4620230"
        "ap-south-1" = "ami-03dbf9550d4620230"
  }
}
 variable "region" {
   default = "ap-south-1"
}

variable "instance_count" {
  default = "1"
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
