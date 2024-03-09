resource "aws_db_subnet_group" "burgerroyale_auth_db_subnet_group" {
  # name = "${var.projectName}-db-subnet-group"
  # tags = {
  #   Name = "${var.projectName}-db-subnet-group"
  # }
  subnet_ids = [
    aws_subnet.burgerroyale_auth_public_subnet_1.id,
    aws_subnet.burgerroyale_auth_public_subnet_2.id
  ]
}

resource "aws_db_instance" "burgerroyale_auth_db_mssql" {
  engine                       = "sqlserver-ex"
  engine_version               = "15.00"
  identifier                   = "${var.projectName}-db-mssql"
  username                     = var.dbUserName
  password                     = var.dbPassword
  allocated_storage            = 20
  instance_class               = "db.t3.micro"
  db_subnet_group_name         = aws_db_subnet_group.burgerroyale_auth_db_subnet_group.name
  max_allocated_storage        = 30
  multi_az                     = false
  vpc_security_group_ids       = [aws_default_security_group.burgerroyale_auth_default_security_group.id]
  apply_immediately            = true
  skip_final_snapshot          = true
  publicly_accessible          = true
  deletion_protection          = false
  performance_insights_enabled = true
  backup_retention_period      = 1
  backup_window                = "00:00-00:30"
  copy_tags_to_snapshot        = true
  delete_automated_backups     = true
  tags = {
    Name = "${var.projectName}_db_mssql"
  }
}