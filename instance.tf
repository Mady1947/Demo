provider "aws" { 
  region = "ap-south-1" 
  access_key = "my-access-key" 
  secret_key = "my-secret-key" 
  }
resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = "${file("terraform-demo.pub")}"
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
