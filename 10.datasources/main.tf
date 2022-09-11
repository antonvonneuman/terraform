data "aws_ami" "amzlnx-image" {
  most_recent = true
  owners = ["amazon"]
  
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "dev-ec2" {
  ami = data.aws_ami.amzlnx-image.id
  instance_type = "t3.micro"
  tags = {
    Name = "Dev-Server"
  }
}
