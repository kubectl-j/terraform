variable "region" {
  description = "The region where the VPC should be created"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {
    Name        = "my-vpc"
    Environment = "dev"
  }
}