# Changelog

All notable changes to this project will be documented in this file.

## [1.0.0] - 2026-04-01

### Added
- Initial release of Site-to-Site VPN module
- Support for AWS VPN Gateway (VGW)
- Support for Customer Gateway (CGW)
- Support for VPN Connection (IPSec)
- Dynamic routing (BGP) support using route propagation
- Static routing support using aws_vpn_connection_route
- Configurable routing mode via `enable_static_routes`
- Outputs for tunnel IPs and preshared keys

### Features
- Reusable module design across environments
- Input-driven architecture (no hardcoded VPC)
- Supports multi-route table propagation
- Sensitive outputs handled securely

---

## [1.1.0] - TBD

### Planned
- Transit Gateway support
- CloudWatch logging for VPN tunnels
- Custom tunnel options (inside CIDR, encryption settings)