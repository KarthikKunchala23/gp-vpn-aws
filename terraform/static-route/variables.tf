variable "team_name" {
  description = "Name of the team responsible for the VPN"
  type        = string
  default = "gp"
}

variable "vpc_id" {
  description = "VPC ID where VPN will be attached"
  type        = string
  default     = "vpc-0004d3466fc741795"
}

variable "vpc_cidr" {
  description = "CIDR block of the VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "subnet_ids" {
  description = "Subnet IDs within the VPC for VPN attachment"
  type        = list(string)
  default     = ["subnet-02c09ab23118357e6"]  
}

variable "customer_gateway_ip" {
  description = "Public IP address of the customer gateway"
  type        = string
  default     = "115.98.32.72"
}

variable "bgp_asn" {
  description = "BGP ASN for the VPN connection"
  type        = number
  default     = 65000
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
  type        = list(string)
  default     = ["rtb-022e4a40cca43caa8"]
}