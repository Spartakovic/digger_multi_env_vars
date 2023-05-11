terraform {
  backend "s3" {
    key = "terraform.tfstate"
    bucket = "dias-test-terraform-state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}
