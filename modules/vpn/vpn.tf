resource "aws_vpn_gateway" "gp-vpn-gw" {
  vpc_id = var.network_config.vpc_id
  tags = {
    Name = "${var.team_name}-gp-vpn-gw"
  }
}

resource "aws_vpn_gateway_attachment" "gp-vpn-gw-attachment" {
  vpc_id = var.network_config.vpc_id
  vpn_gateway_id = aws_vpn_gateway.gp-vpn-gw.id
}

# Create the Customer Gateway
resource "aws_customer_gateway" "gp-cgw" {
  bgp_asn = var.vpn_config.bgp_asn
  ip_address = var.vpn_config.customer_gateway_ip
  type = "ipsec.1"
  tags = {
    Name = "${var.team_name}-gp-cgw"
  }
}

# Create the VPN Connection
resource "aws_vpn_connection" "gp-vpn-connection" {
  vpn_gateway_id = aws_vpn_gateway.gp-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.gp-cgw.id
  type = "ipsec.1"
  static_routes_only = var.enable_static_route
  tags = {
    Name = "${var.team_name}-gp-vpn-connection"
  }
}

# If static routes are True, create static routes for the VPN connection
resource "aws_vpn_connection_route" "gp-vpn-connection-route" {
  for_each = var.enable_static_route ? toset(var.static_routes) : []
  vpn_connection_id = aws_vpn_connection.gp-vpn-connection.id
  destination_cidr_block = each.value
}

# If dynamic routing is enabled, create route propagation for the VPN connection
resource "aws_vpn_gateway_route_propagation" "gp-vpn-route-propagation" {
  for_each = var.enable_static_route ? toset([]) : toset(var.route_table_ids)
  route_table_id = each.value
  vpn_gateway_id = aws_vpn_gateway.gp-vpn-gw.id
}