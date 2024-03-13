terraform {
  backend "s3" {
    bucket = "burgerroyale-auth-s3-bucket"
    key = "state/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.regionDefault
}
