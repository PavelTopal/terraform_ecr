provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "hello-app" {
  name                 = "my-app"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}