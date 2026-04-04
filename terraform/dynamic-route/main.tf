module "vpn" {
    source = "git::https://github.com/KarthikKunchala23/gp-vpn-aws.git//modules/vpn?ref=v1.1.5"

    team_name = var.team_name
    network_config = {
        vpc_id = var.vpc_id
        vpc_cidr = var.vpc_cidr
        subnet_ids = var.subnet_ids
    }
    vpn_config = {
        customer_gateway_ip = var.customer_gateway_ip
        bgp_asn = var.bgp_asn
    }
    enable_static_route = var.enable_static_route
    static_routes = var.static_routes
    route_table_ids = var.route_table_ids

}