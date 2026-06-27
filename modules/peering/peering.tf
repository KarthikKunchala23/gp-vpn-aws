data "aws_caller_identity" "current" {}

resource "aws_vpc_peering_connection" "gp-vpc-peering" {
    peer_owner_id = var.peer_owner_id
    peer_vpc_id   = var.peer_vpc_id
    vpc_id        = var.vpc_id
    # peer_region  = var.peer_region
    auto_accept  = var.peer_owner_id == data.aws_caller_identity.current.account_id ? true : false

    accepter {
        allow_remote_vpc_dns_resolution = var.allow_accepter_vpc_dns_resolution
    }

    requester {
        allow_remote_vpc_dns_resolution = var.allow_requester_vpc_dns_resolution
    }

    tags = {
        Name        = "${var.team}-${var.environment}-vpc-peering"
        Environment = var.environment
        Team        = var.team
    }
}