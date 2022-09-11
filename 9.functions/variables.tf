variable "region" {
  default = "us-east-1"
}

variable "images" {
  type = map
  default = {
    "us-east-1" = "ami-05fa00d4c63e32376"
    "us-west-2" = "ami-018d291ca9ffc002f"
    "ap-south-1" = "ami-06489866022e12a14"
  }
}

variable "server-names" {
  type = list
  default = ["App-Server","Web-Server"]
}
