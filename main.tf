# https://github.com/terraform-aws-modules/terraform-aws-vpc

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"

  name                  = "${var.infra_id}-${var.env}"
  cidr                  = var.cidr
  secondary_cidr_blocks = var.secondary_cidr_blocks
  azs                   = var.azs
  private_subnets       = var.private_subnets
  public_subnets        = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false

  tags = local.tags
}