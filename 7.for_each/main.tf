resource "aws_instance" "myec2" {
  for_each = var.app-tier

  ami = "ami-05fa00d4c63e32376"
  instance_type = each.value
  availability_zone = "us-east-1a"

  tags = {
      Name= each.key
  }
}
