resource "aws_instance" "Test" {
  count = 2 # create four similar EC2 instances

  ami           = "ami-03dbf9550d4620230"
  instance_type = "t2.micro"

  tags = {
    Name = "Test ${count.index}"
  }
}
