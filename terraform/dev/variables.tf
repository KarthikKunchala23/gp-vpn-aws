variable "team_name" {
  description = "Name of the team responsible for the VPN"
  type        = string
  default = "gp"
}
variable "vpc_id" {
  description = "VPC ID where the VPN gateway will be attached"
  type = string
  default = ""
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type = string
  default = ""
}

variable "subnet_ids" {
  description = "subnet ids for vpn gateway attachment"
  type = list(string)
  default = []
}

variable "customer_gateway_ip" {
  description = "Public IP address of the customer gateway device"
  type = string
  default = ""
}

variable "bgp_asn" {
  description = "BGP ASN for the customer gateway"
  type = number
  default = 65000
}

variable "enable_static_route" {
  description = "Whether to keep static route or dynamic route propagation for the VPN connection"
  type = bool
  default = false
}

variable "static_routes" {
  description = "List of destination CIDRs for static routing"
  type        = list(string)
  default     = []
}

variable "route_table_ids" {
  description = "Route tables for VPN propagation"
  type        = list(string)
  default     = []
}