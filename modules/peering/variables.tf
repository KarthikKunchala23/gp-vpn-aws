variable "peer_owner_id" {
  description = "The AWS account ID of the owner of the accepter VPC."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the requester VPC."
  type        = string
}

variable "peer_vpc_id" {
  description = "The ID of the accepter VPC."
  type        = string
}

variable "auto_accept" {
  description = "Whether to automatically accept the peering connection (true) or not (false)."
  type        = bool
  default     = false
}

variable "allow_remote_vpc_dns_resolution" {
  description = "Whether to allow DNS resolution from the accepter VPC to the requester VPC (true) or not (false)."
  type        = bool
  default     = false
}

variable "name" {
  description = "The name of the VPC peering connection."
  type        = string
}

