module "vpc-peering" {
    source = "../../../modules/peering"
    peer_owner_id = var.peer_owner_id
    peer_vpc_id   = var.peer_vpc_id
    vpc_id        = var.vpc_id
    # peer_region   = var.peer_region
    allow_accepter_vpc_dns_resolution  = true
    allow_requester_vpc_dns_resolution = true
    team = var.team
    environment = var.environment
}