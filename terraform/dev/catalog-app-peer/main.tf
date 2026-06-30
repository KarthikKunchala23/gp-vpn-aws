module "rds-to-eks-peer" {
    source = "../../../modules/peering"
    peer_owner_id = "897722700244"
    vpc_id = "vpc-0a1b2c3d4e5f6g7h8"
    peer_vpc_id = "vpc-1a2b3c4d5e6f7g8h9"
    auto_accept = true
    allow_remote_vpc_dns_resolution = true
    name = "rds-to-eks-peering"
}