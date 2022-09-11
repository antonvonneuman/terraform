provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "firstec2" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"

  tags = {
    Name = "App-server"
  }
}
