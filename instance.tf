provider "aws" { 
  region = "ap-south-1" 
  access_key = "AWS_ACCESS_KEY" 
  secret_key = "AWS_SECRET_KEY"
  }
resource "aws_security_group" "default" {
name_prefix = "test_instance"

ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = lookup(var.ami,var.aws_region)
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraform-demo.key_name
  user_data     = file("install_apache.sh")

  tags = {
    Name  = element(var.instance_tags, count.index)
    Batch = "5AM"
  }
}
