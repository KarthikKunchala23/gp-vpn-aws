# 1.0.0 (2026-06-30)


### Bug Fixes

* **ip:** added publci ip and version tag changed ([#11](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/11)) ([26f0691](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/26f0691496d1d26cc41274ca9ba4a3a470900ab2))
* **stateFile:** Added Backend state config ([#9](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/9)) ([d228e52](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/d228e525bbd0a422b688ee247e7a34baed525b4a))
* **version:** version tag changed ([5ed9403](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/5ed940303adb80b4ca0f6e95bac2ff73aaf1c6f3))
* **workflow:** data block added for dummy test and workflow auto trigger removed ([5a38b40](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/5a38b400f747dd00786ddf4d3a41a8fb63ce7bf2))

# 1.0.0 (2026-06-27)


### Bug Fixes

* **ip:** added publci ip and version tag changed ([#11](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/11)) ([26f0691](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/26f0691496d1d26cc41274ca9ba4a3a470900ab2))
* **stateFile:** Added Backend state config ([#9](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/9)) ([d228e52](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/d228e525bbd0a422b688ee247e7a34baed525b4a))
* **version:** version tag changed ([5ed9403](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/5ed940303adb80b4ca0f6e95bac2ff73aaf1c6f3))
* **workflow:** data block added for dummy test and workflow auto trigger removed ([5a38b40](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/5a38b400f747dd00786ddf4d3a41a8fb63ce7bf2))

## [1.1.5](https://github.com/KarthikKunchala23/gp-vpn-aws/compare/v1.1.4...v1.1.5) (2026-04-04)


### Bug Fixes

* **version:** version tag changed ([ccf7690](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/ccf76906937e6feb7785b68fc0e500dbadaf88b7))

## [1.1.4](https://github.com/KarthikKunchala23/gp-vpn-aws/compare/v1.1.3...v1.1.4) (2026-04-04)


### Bug Fixes

* **ip:** added publci ip and version tag changed ([#11](https://github.com/KarthikKunchala23/gp-vpn-aws/issues/11)) ([43e1277](https://github.com/KarthikKunchala23/gp-vpn-aws/commit/43e127782a9aaf84327a70ab4633fa33c23af565))

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

## [2.0.0] - TBD

### Planned
- Transit Gateway support
- CloudWatch logging for VPN tunnels
- Custom tunnel options (inside CIDR, encryption settings)
