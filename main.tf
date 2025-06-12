provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
  }

  backend "s3" {
    bucket         	   = "terraform-states-nikita"
    key              	   = "state/terraform.tfstate"
    region         	   = "eu-north-1"
    encrypt        	   = true
    dynamodb_table = "terrform-state"
  }
}

resource "aws_s3_bucket" "my_dummy_bucket" {
  bucket = "dummy-bucket-nikita"
}


