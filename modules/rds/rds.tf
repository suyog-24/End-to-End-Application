resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = var.privsubnetid

  tags = {
    Name = "Database subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.default.id
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  multi_az               = true
  name                   = "rdsdb"
  username               = "rdsuser"
  password               = "password123"
  skip_final_snapshot    = true
}