resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  lifecycle {
    ignore_changes = [ tags["created_by"], tags["created_by_arn"] ]
  }
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "default_network_acl_id" {
    value = aws_vpc.vpc.default_network_acl_id  
}

output "default_route_table_id" {
  value = aws_vpc.vpc.default_route_table_id
}