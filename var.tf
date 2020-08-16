variable "subnet_ids" {
  type = list(string)
}

resource "aws_instance" "swa" {
  # Create one instance for each subnet
  count = length(var.subnet_ids)

  ami           = "ami-03dbf9550d4620230"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_ids[count.index]

  tags = {
    Name = "swa ${count.index}"
  }
}
