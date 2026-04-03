module "vpn_static_routes" {
    source = "git::https://github.com/KarthikKunchala23/gp-vpn-aws.git//modules/vpn?ref=v1.0.0"

    team_name = "gp"
    network_config = var.network_config

    vpn_config = var.vpn_config
    enable_static_route = var.enable_static_route
    static_routes = var.static_routes
    route_table_ids = var.route_table_ids
}