
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr_block
  azs  = var.availability_zones

  # サブネットのCIDRを動的に作成
  private_subnets = local.subnets
  public_subnets  = local.subnets

  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    "Environment" = var.environment
  }
}

# locals による動的CIDR計算
locals {
  base_cidr_block = var.cidr_block
  subnets = [for i in range(4) : cidrsubnet(local.base_cidr_block, 8, i)]
}