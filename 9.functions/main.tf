locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

resource "aws_key_pair" "server-key" {
  key_name   = "server-key"
  public_key = file("${path.module}/server-key.pub")
}

resource "aws_instance" "app-server" {
   ami = lookup(var.images,var.region)
   instance_type = "t2.micro"
   key_name = aws_key_pair.server-key.key_name
   count = 2

   tags = {
     Name = element(var.server-names,count.index)
   }
}


output "timestamp" {
  value = local.time
}
