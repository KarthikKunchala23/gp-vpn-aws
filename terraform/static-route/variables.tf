variable "team_name" {
  description = "Name of the team responsible for the VPN"
  type        = string
  default = "gp"
}

variable "network_config" {
  description = "VPC details where VPN will be attached"

  type = object({
    vpc_id = "vpc-0004d3466fc741795"
    vpc_cidr = "10.20.0.0/16"
    subnet_ids = ["subnet-02c09ab23118357e6"]
  })
}

variable "vpn_config" {
  description = "Customer gateway and VPN configuration"

  type = object({
    customer_gateway_ip = "10.0.0.1"
    bgp_asn             = 65000
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
  default     = ["192.168.0.0/16"]
}

variable "route_table_ids" {
  description = "Route tables for VPN propagation"
  type        = ["rtb-022e4a40cca43caa8"]
}