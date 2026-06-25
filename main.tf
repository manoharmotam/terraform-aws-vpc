resource "aws_vpc" "main" {
    region = var.region
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true
    instance_tenancy = "default"
    

    # tags = merge(var.vpc_tags,local.common_name,local.common_tags)
}

resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id
    # tags = merge(local.common_name,local.common_tags)
}

resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = local.azs[count.index]
  map_public_ip_on_launch = true
#   tags = merge(local.common_name,local.common_tags)
}

resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr[count.index]
  availability_zone = local.azs[count.index]
#   tags = merge(local.common_name,local.common_tags)
}

resource "aws_subnet" "database_subnet" {
  count = length(var.database_subnet_cidr)
  vpc_id = aws_vpc.main.id
  cidr_block = var.database_subnet_cidr[count.index]
  availability_zone = local.azs[count.index]
#   tags = merge(local.common_name,local.common_tags)
}