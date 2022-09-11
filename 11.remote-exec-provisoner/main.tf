resource "aws_key_pair" "server-key" {
  key_name   = "server-key"
  public_key = file("${path.module}/server-key.pub")
}
resource "aws_security_group" "app-sg" {
  name        = "app-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


}
resource "aws_instance" "prod-ec2" {
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  availability_zone = "us-east-1a"
  key_name = aws_key_pair.server-key.key_name
  vpc_security_group_ids = [aws_security_group.app-sg.id]

  tags = {
    Name = "Prod-server"
  }
  connection {
   type     = "ssh"
   user     = "ec2-user"
   private_key = file("${path.module}/server-key.pem")
   host     = self.public_ip
 }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y httpd",
      "sudo systemctl start httpd"
    ]
  }

}
