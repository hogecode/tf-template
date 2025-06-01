
provider "aws" {
  region = "us-west-2"
  version = "~> 5.0"

  # AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY
  # ~/.aws/credentialsから情報を読み取る
}