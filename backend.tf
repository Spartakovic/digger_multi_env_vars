terraform {
  backend "s3" {
    key = "terraform.tfstate"
    bucket = "dias-test-terraform-state"
    region = "us-east-1"
    profile = "tf-state"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "tf-infra"
}
