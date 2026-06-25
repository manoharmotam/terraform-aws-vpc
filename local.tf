locals {
  common_name = "${var.project}-${var.environment}"
  common_tags = {
    Project      = "mrmotam"
    Environment  = "dev"
    Name         = local.common_name
    "Managed By" = "terraform"
  }
  azs = data.aws_availability_zones.get_azs.names
}