module "prod-ec2" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "prod-app-server"
  instance_count         = 1

  ami                    = "ami-05fa00d4c63e32376"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-0d98c6135cc172bdb"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
