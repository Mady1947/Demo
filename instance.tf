resource "aws_instance" "swa" {
  count = 2 # create four similar EC2 instances

  ami           = "ami-03dbf9550d4620230"
  instance_type = "t2.micro"

  tags = {
    Name = "swa ${count.index}"
  }
}
