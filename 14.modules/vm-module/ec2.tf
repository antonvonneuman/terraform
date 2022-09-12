resource "aws_instance" "prod-ec2" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Prod-server"
  }
}
