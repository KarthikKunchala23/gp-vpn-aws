output "vpn_connection_id" {
  description = "ID of the VPN connection"
  value       = aws_vpn_connection.gp-vpn-connection.id
}

output "vpn_gateway_id" {
  description = "ID of the VPN Gateway"
  value       = aws_vpn_gateway.gp-vpn-gw.id
}

output "customer_gateway_id" {
  description = "ID of the Customer Gateway"
  value       = aws_customer_gateway.gp-cgw.id
}

output "tunnel1_address" {
  description = "Tunnel 1 public IP"
  value       = aws_vpn_connection.gp-vpn-connection.tunnel1_address
}

output "tunnel2_address" {
  description = "Tunnel 2 public IP"
  value       = aws_vpn_connection.gp-vpn-connection.tunnel2_address
}