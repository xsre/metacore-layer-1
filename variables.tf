variable "region" {
  description = "AWS Region Id"
}

variable "cidr" {
  description = "VPC CIDR block"
}

variable "secondary_cidr_blocks" {
  description = "VPC Secondary CIDR"
}

variable "azs" {
  description = "VPC Subnet AZs"
}

variable "public_subnets" {
  description = "VPC Public subnets"
}

variable "private_subnets" {
  description = "VPC Private subnets"
}

variable "infra_id" {
  description = "Shoud be an unique identifier"
}

variable "env" {
  description = "Environment: dev/stag/prod"
}

variable "team" {
  description = "Team who has the ownership"
}


