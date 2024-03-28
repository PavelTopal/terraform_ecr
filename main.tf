provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "myapp-repo" {
  name                 = "myapp-repo"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

terraform {
  backend "s3" {
    key    = "tf-ecr"
    region = "us-east-1"    
  }
}