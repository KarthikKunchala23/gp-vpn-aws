module "rds-to-eks-peer" {
    source = "../../../modules/peering"
    peer_owner_id = "897722700244"
    vpc_id = "vpc-07604cc8c3e60d71f"
    peer_vpc_id = "vpc-0d6dbb80bdcd558d0"
    auto_accept = true
    allow_remote_vpc_dns_resolution = true
    name = "retail-store-to-eks-peering"
}