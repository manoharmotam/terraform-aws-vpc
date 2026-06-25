data "aws_availability_zones" "get_azs" {
    region = "us-east-1"
    state = "available"
}

# output "get_azs" {
#   value = data.aws_availability_zones.get_azs.names
# }

# data "aws_subnets" "sample" {
#     filter {
#       name = "vpc-id"
#       values = [aws_vpc.main.id]
#     }
# }

# output "aws_subnets" {
#   value = data.aws_subnets.sample
# }