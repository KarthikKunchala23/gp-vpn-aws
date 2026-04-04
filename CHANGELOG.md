## [1.1.3](https://github.com/KarthikKunchala23/gp-vpn-aws/compare/v1.1.2...v1.1.3) (2026-04-04)


### Bug Fixes

* **stateFile:** Added Backend state config ([#9](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/9)) ([564c872](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/564c872b677ca5cca040eafba176d4c83ef5ee77))

## [1.1.2](https://github.com/KarthikKunchala23/gp-vpn-aws/compare/v1.1.1...v1.1.2) (2026-04-04)


### Bug Fixes

* **workflow:** data block added for dummy test and workflow auto trigger removed ([0e36121](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/0e3612132a85494b85ee4a94c80d72d5d67a99a8))

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
