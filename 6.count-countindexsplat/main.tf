resource "aws_instance" "myec2" {
  count = 3
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"

  tags = {
    # Name = "App-server-1"
    # Name= "App-server-${count.index}"
      Name= "App-server-${count.index +1}"
  }
}


# resource "aws_instance" "myec2-2" {
#   ami = "ami-05fa00d4c63e32376"
#   instance_type = "t3.micro"
#   availability_zone = "us-east-1a"
#
#   tags = {
#     Name = "App-server-2"
#   }
# }
#
#
# resource "aws_instance" "myec2-3" {
#   ami = "ami-05fa00d4c63e32376"
#   instance_type = "t3.micro"
#   availability_zone = "us-east-1a"
#
#   tags = {
#     Name = "App-server-3"
#   }
# }
