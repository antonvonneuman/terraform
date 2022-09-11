provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "firstec2" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone

  tags = {
    Name = "App-server"
  }
}
