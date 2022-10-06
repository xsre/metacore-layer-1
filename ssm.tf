# Layer 1 - SSM Parameters for interoperability 

#resource "aws_ssm_parameter" "cluster_prefix" {
#  name = "${var.infra_id}-${var.env}"
#  type = "String"
#  value = "${var.infra_id}-${var.env}"
#  
#}
#
#data "aws_vpc" "selected" {
#  depends_on = [
#    module.vpc
#  ]
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-${var.env}"]
#  }  
#}
#
#resource "aws_ssm_parameter" "vpc_id" {
#  name = "${var.infra_id}-${var.env}-vpc-id"
#  type = "String"
#  value = data.aws_vpc.selected.id
#  
#}
#
#resource "aws_ssm_parameter" "vpc_cidr" {
#  name = "${var.infra_id}-${var.env}-vpc-cidr"
#  type = "String"
#  value = data.aws_vpc.selected.cidr_block
#  
#}
#
## private-subnet-0
#data "aws_subnet" "vpc_private_subnet_0" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-private-0*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-private-0" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-0"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_0.id
#}
#
#resource "aws_ssm_parameter" "subnet-private-0-cidr" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-0-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_0.cidr_block
#}
#
## private-subnet-1
#data "aws_subnet" "vpc_private_subnet_1" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-private-1*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-private-1" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-1"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_1.id
#}
#
#resource "aws_ssm_parameter" "subnet-private-1-cidr" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-1-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_1.cidr_block
#}
#
## private-subnet-2
#
#data "aws_subnet" "vpc_private_subnet_2" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-private-2*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-private-2" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-2"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_2.id
#}
#
#resource "aws_ssm_parameter" "subnet-private-2-cidr" {
#  name  = "${var.infra_id}-${var.env}-private-subnet-2-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_private_subnet_2.cidr_block
#}
#
## public-subnet-0
#data "aws_subnet" "vpc_public_subnet_0" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-public-0*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-public-0" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-0"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_0.id
#}
#
#resource "aws_ssm_parameter" "subnet-public-0-cidr" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-0-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_0.cidr_block
#}
#
## public-subnet-1
#data "aws_subnet" "vpc_public_subnet_1" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-public-1*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-public-1" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-1"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_1.id
#}
#
#resource "aws_ssm_parameter" "subnet-public-1-cidr" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-1-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_1.cidr_block
#}
#
## public-subnet-2
#data "aws_subnet" "vpc_public_subnet_2" {
#  vpc_id = data.aws_vpc.selected.id
#  filter {
#    name   = "tag:Name"
#    values = ["*${var.infra_id}*-*${var.env}*-*subnet-public-2*"]
#  }
#}
#
#resource "aws_ssm_parameter" "subnet-public-2" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-2"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_2.id
#}
#
#resource "aws_ssm_parameter" "subnet-public-2-cidr" {
#  name  = "${var.infra_id}-${var.env}-public-subnet-2-cidr"
#  type  = "String"
#  value = data.aws_subnet.vpc_public_subnet_2.cidr_block
#}