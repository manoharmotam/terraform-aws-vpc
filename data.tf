data "aws_availability_zones" "get_azs" {
    region = "us-east-1"
    state = "available"
}

output "get_azs" {
  value = data.aws_availability_zones.get_azs.names
}