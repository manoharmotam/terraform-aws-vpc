locals {
  common_name = "${var.project}-${var.environment}"
  common_tags = {
    Project = "mrmotam"
    Environment = "dev"
    "Managed By" = "terraform"
  }
  azs = data.aws_availability_zones.get_azs.names
}