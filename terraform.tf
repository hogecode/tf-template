terraform {
  required_version = ">= 1.0.0"
  
  backend "s3" {
    bucket = "sample-bucket"
    key    = "hcl/terraform"
    region = "us-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
