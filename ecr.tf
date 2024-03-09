resource "aws_ecr_repository" "burgerroyale_auth_ecr_repository" {
  name                 = var.projectName
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }

  force_delete = true
}