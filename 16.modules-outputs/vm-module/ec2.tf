resource "aws_instance" "prod-ec2" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  tags = {
    Name = "Prod-server"
  }
}
