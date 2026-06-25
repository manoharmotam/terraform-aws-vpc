variable "project" {
    default = "mrmotam"
}

variable "environment" {
    default = "dev"
}

variable "az" {
    default = ["us-east-1a", "us-east-1b"]
}

variable "vpc_tags" {
  default = {}
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "region" {
  default = "us-east-1"
}

variable "public_subnet_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidr" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "database_subnet_tags" {
    default = {}
}

variable "rt_tags"{
    default = {}
}