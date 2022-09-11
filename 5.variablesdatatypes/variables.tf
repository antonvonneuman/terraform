variable "instance_class" {
    type = string
    default = "db.t3.micro"
}

variable "allocated_storage" {
    type = number
    default = 10
}
variable "final_snapshot" {
    type = bool
    default = true
}

variable "engine" {
    type = list
    default = ["mysql", "postgresql", "oracle"]
}

variable "credentials" {

    type = map
    default = {
               "username": "foo",
	             "password" : "foobar123"
              }
}
