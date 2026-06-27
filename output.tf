# output "get_azs" {
#   value = data.aws_availability_zones.get_azs.names
# }

output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public_subnet[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private_subnet[*].id
}

output "database_subnet_ids" {
  value = aws_subnet.database_subnet[*].id
}

output "eip" {
  value = aws_eip.nat.public_ip
}

output "aws_vpc_default" {
  value = data.aws_vpc.default.id
}