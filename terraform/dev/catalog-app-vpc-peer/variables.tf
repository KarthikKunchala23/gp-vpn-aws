variable "peer_owner_id" {
    description = "The AWS account ID of the owner of the peer VPC."
    type        = string
    default     = "897722700244"
}

variable "peer_vpc_id" {
    description = "The ID of the Accepter VPC with which you are creating the peering connection."
    type        = string
    default     = "vpc-06cbaa0df261db516"
}

variable "vpc_id" {
    description = "The ID of the Requester VPC that you are creating the peering connection from."
    type        = string
    default     = "vpc-070ada7aa992ca5a7"
}

variable "peer_region" {
    description = "The region of the peer VPC."
    type        = string
    default     = "ap-south-1"
}

variable "team" {
    description = "The team name for the VPC peering connection."
    type        = string
    default     = "catalog-app"
}

variable "environment" {
    description = "The environment name for the VPC peering connection."
    type        = string
    default     = "dev"
}