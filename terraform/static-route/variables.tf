variable "team_name" {
  description = "Name of the team responsible for the VPN"
  type        = string
  default = "gp"
}

variable "network_config" {
  description = "VPC details where VPN will be attached"

  type = object({
    vpc_id = string
    vpc_cidr = string
    subnet_ids = list(string)
  })
}

variable "vpn_config" {
  description = "Customer gateway and VPN configuration"

  type = object({
    customer_gateway_ip = string
    bgp_asn             = number
  })
}

variable "enable_static_route" {
  description = "Whether to keep static route or dynamic route propagation for the VPN connection"
  type = bool
  default = true
}

variable "static_routes" {
  description = "List of destination CIDRs for static routing"
  type        = list(string)
  default     = []
}

variable "route_table_ids" {
  description = "Route tables for VPN propagation"
  type        = list(string)
}