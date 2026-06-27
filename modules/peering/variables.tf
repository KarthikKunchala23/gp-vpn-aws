variable "peer_owner_id" {
    description = "The AWS account ID of the owner of the peer VPC."
    type        = string
}

variable "peer_vpc_id" {
    description = "The ID of the VPC with which you are creating the peering connection."
    type        = string
}

variable "vpc_id" {
    description = "The ID of the VPC that you are creating the peering connection from."
    type        = string
}

# variable "peer_region" {
#     description = "The region of the peer VPC."
#     type        = string
# }

variable "allow_accepter_vpc_dns_resolution" {
    description = "Whether to allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in a peer VPC."
    type        = bool
    default     = true
}

variable "allow_requester_vpc_dns_resolution" {
    description = "Whether to allow a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in a peer VPC."
    type        = bool
    default     = true
}

variable "team" {
    description = "The team name for the VPC peering connection."
    type        = string
}

variable "environment" {
    description = "The environment name for the VPC peering connection."
    type        = string
}