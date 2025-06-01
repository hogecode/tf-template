
variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  # デフォルト値を設定
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-northeast-1a", "ap-northeast-1b"]  # デフォルト値
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "dev-vpc"  # デフォルト値
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"  # デフォルト値
}
