resource "aws_instance" "prod-ec2" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  tags = {
    Name = "Prod-server"
  }

  provisioner "local-exec" {
       command = "echo ${aws_instance.prod-ec2.public_ip} >> public_ips.txt"
  }


}
