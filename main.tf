# https://github.com/terraform-aws-modules/terraform-aws-vpc

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "${var.cidr}"

  azs             = ["${var.azs}"]
  private_subnets = ["${var.private_subnets}"]
  public_subnets  = ["${var.public_subnets}"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}