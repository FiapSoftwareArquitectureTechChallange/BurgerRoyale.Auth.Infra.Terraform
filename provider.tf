terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "${TERRAFORM_BUCKET_NAME}"
    key    = "burgerroyale-auth.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.regionDefault
}
