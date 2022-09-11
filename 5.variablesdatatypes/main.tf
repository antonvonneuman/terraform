resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine[0]
  engine_version       = "5.7"
  instance_class       = var.instance_class
  db_name              = "mydb"
  username             = var.credentials["username"]
  password             = var.credentials["password"]
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = var.final_snapshot
}

output "rds_endpoint" {

  value = aws_db_instance.default.endpoint

}
