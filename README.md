# 🌐 Terraform AWS Site-to-Site VPN Module

A reusable, production-ready Terraform module to provision an **AWS Site-to-Site VPN** with support for both **dynamic (BGP)** and **static routing**.

This module is designed for **multi-team usage**, enabling any VPC to integrate with on-premise or external networks using a simple input-driven approach.

---

## 🚀 Features

* ✅ Create AWS VPN Gateway (VGW)
* ✅ Create Customer Gateway (CGW)
* ✅ Create Site-to-Site VPN Connection
* ✅ Support for **Dynamic Routing (BGP)**
* ✅ Support for **Static Routing**
* ✅ Route propagation for dynamic routing
* ✅ Static route configuration using `aws_vpn_connection_route`
* ✅ Fully reusable and environment-agnostic
* ✅ Works across accounts and projects
* ✅ Minimal assumptions (pure input-driven design)

---

## 📦 Module Usage

```hcl
module "vpn" {
    source = "git::https://github.com/KarthikKunchala23/gp-vpn-aws.git//modules/vpn?ref=v1.0.0"

    team_name = "gp"
    network_config = {
        vpc_id = "vpc-xxxx"
        vpc_cidr = "10.0.0.0/16"
        subnet_ids = "subnet-xxx"
    }
    vpn_config = {
        customer_gateway_ip = "185.127.65.103"
        bgp_asn = 65001
    }
    enable_static_route = false
    static_routes = var.static_routes
    route_table_ids = ["rtb-123"]

}
```

---

## 🔁 Static Routing Example

```hcl
module "vpn" {
    source = "git::https://github.com/KarthikKunchala23/gp-vpn-aws.git//modules/vpn?ref=v1.0.0"

    team_name = "gp"
    network_config = {
        vpc_id = "vpc-xxxx"
        vpc_cidr = "10.0.0.0/16"
        subnet_ids = "subnet-xxx"
    }
    vpn_config = {
        customer_gateway_ip = "185.127.65.103"
        bgp_asn = 6500
    }
    enable_static_route = true
    static_routes = ["192.168.0.0/24"]
    route_table_ids = ["rtb=1234"]

}
```

---

## 🧩 Architecture Overview

```
On-Prem Network
       │
       │ (IPSec Tunnel)
       ▼
Customer Gateway (CGW)
       │
       ▼
AWS VPN Connection
       │
       ▼
Virtual Private Gateway (VGW)
       │
       ▼
VPC Route Tables
       │
       ▼
Private Subnets / Workloads
```

---

## ⚙️ Inputs

| Name                 | Description                    | Type         | Required |
| -------------------- | ------------------------------ | ------------ | -------- |
| team_name            | Name prefix for resources      | string       | ✅        |
| network_config       | aws network PN configuration   | object       | ✅        |
| enable_static_routes | Enable static routing          | bool         | ✅        |
| route_table_ids      | Route tables for propagation   | list(string) | ✅        |
| static_routes        | CIDR blocks for static routing | list(string) | ❌        |
| vpn_config           | VPN configuration object       | object       | ✅        |

---

### vpn_config Object

| Name                | Description                  | Type   | Required |
| ------------------- | ---------------------------- | ------ | -------- |
| customer_gateway_ip | Public IP of on-prem gateway | string | ✅        |
| bgp_asn             | BGP ASN for CGW              | number | ✅        |

---

## 📤 Outputs

| Name                  | Description              |
| --------------------- | ------------------------ |
| vpn_connection_id     | VPN Connection ID        |
| vpn_gateway_id        | VPN Gateway ID           |
| customer_gateway_id   | Customer Gateway ID      |
| tunnel1_address       | Tunnel 1 public IP       |
| tunnel2_address       | Tunnel 2 public IP       |

---

## 🔀 Routing Modes

### 🔹 Dynamic Routing (BGP)

* Uses route propagation
* Automatically exchanges routes
* Recommended for production

```hcl
enable_static_routes = false
```

---

### 🔹 Static Routing

* Manually define destination CIDRs
* Uses `aws_vpn_connection_route`

```hcl
enable_static_routes = true
```

---

## 🛠️ Requirements

* Terraform >= 1.5.0
* AWS Provider >= 5.0

---

## 🧪 CI/CD Integration

This module is designed to work with **GitHub reusable workflows**, ensuring:

* Terraform format validation
* Code validation
* Linting (TFLint)
* Security scanning (tfsec)
* Automated versioning (semantic-release)

---

## 🔖 Versioning

This module follows **Semantic Versioning**:

| Type  | Example |
| ----- | ------- |
| Patch | v1.0.1  |
| Minor | v1.1.0  |
| Major | v2.0.0  |

---

## 🚀 Release Process

* Merge changes into `main`
* Use conventional commits:

  * `feat:` → minor release
  * `fix:` → patch release
* GitHub Actions automatically:

  * Creates tag (vX.X.X)
  * Updates CHANGELOG
  * Publishes release

---

## 🔐 Security Considerations

* Avoid exposing sensitive outputs (PSKs)
* Restrict CIDR ranges in static routes
* Use secure BGP configurations
* Monitor VPN tunnels using CloudWatch

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Follow commit conventions
4. Submit a Pull Request

---

## 📄 License

MIT License

---

## 💡 Author

Maintained by DevOps Engineering Team

---

## ⭐ Final Note

This module is built with **scalability, reusability, and enterprise-grade practices** in mind.
It can be seamlessly integrated into any Terraform-based infrastructure.

---
