module "vm1" {
  source = "./vm-module"
  instance_type = "t3.micro"
  availability_zone = "us-east-1b"
}
