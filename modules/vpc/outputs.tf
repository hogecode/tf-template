output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "Private subnets CIDR"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "Public subnets CIDR"
  value       = module.vpc.public_subnets
}