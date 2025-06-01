terraform {
  required_version = ">= 1.0.0"

  # 練習のため、ローカルバックエンドを利用
  backend "local" {
    path = "terraform.tfstate"
  }

  #   backend "s3" {
  #   bucket = "sample-bucket"
  #   key    = "hcl/terraform"
  #   region = "ap-northeast-1"
  # }

  # required_providers {
  #   aws = {
  #     source  = "hashicorp/aws"
  #     version = "~> 4.0"
  #   }
  # }
}
