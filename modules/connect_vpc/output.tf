/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
  SPDX-License-Identifier: MIT-0 */

# --- modules/vpc/outputs.tf ---

output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "ID of the VPC created"
}

output "private_subnets" {
  value       = aws_subnet.vpc_private_subnets[*].id
  description = "List of private subnets created - to place the EC2 instance(s) or VPC endpoints."
}

output "tgw_subnets" {
  value       = aws_subnet.vpc_tgw_subnets[*].id
  description = "List of TGW subnets - to place the TGW ENIs."
}

output "private_subnet_rts" {
  value       = aws_route_table.vpc_private_subnet_route_table[*].id
  description = "List of route tables of the private subnets."
}

output "csr_instance" {
  value       = aws_instance.csr
  description = "ID of the CSR instance"
}

output "interfact_gig_1" {
  description = "gig1 ip address"
  value       = aws_network_interface.g1
}

output "interfact_gig_2" {
  description = "gig1 ip address"
  value       = aws_network_interface.g2
}


output "peer_address" {
  value       = aws_ec2_transit_gateway_connect_peer.tgw_connect_peer.peer_address
  description = "value of peer_address"
}

# output "public_ip_address" {
#   value = aws_eip.public_ip.public_ip
# }
