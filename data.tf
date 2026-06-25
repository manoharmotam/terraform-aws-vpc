data "aws_availability_zones" "get_azs" {
    region = "us-east-1"
    state = "available"
}

