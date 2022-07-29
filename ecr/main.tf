terraform {
  backend "s3" {
    bucket = "mysultanbucket"
    key    = "ecr-terraform.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "devopsthehardway-ecr-repo" {
  name                 = var.uberapp
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
