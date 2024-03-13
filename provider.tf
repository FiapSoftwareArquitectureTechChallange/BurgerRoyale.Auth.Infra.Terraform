terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"

  backend "s3" {
    bucket = var.bucketName
    key = "state/terraform.tfstate"
    region = var.regionDefault
  }
}

provider "aws" {
  region  = var.regionDefault
}
