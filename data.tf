data "aws_iam_role" "iam_role" {
  name = var.roleName
}

data "aws_db_instance" "database" {
  db_instance_identifier = "${var.burgerRoyale}-db-mssql"
}

data "aws_subnet" "private_subnet_1" {
  tags = {
    Name = "${var.burgerRoyale}_private_subnet_1"
  }
}

data "aws_subnet" "private_subnet_2" {
  tags = {
    Name = "${var.burgerRoyale}_private_subnet_2"
  }
}

data "aws_security_group" "default_security_group" {
  tags = {
    Name = "${var.burgerRoyale}_default_security_group"
  }
}
