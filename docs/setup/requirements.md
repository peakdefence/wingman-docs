# System Requirements

This document outlines the hardware and software requirements for running WINGMAN.

## Server Requirements

### Minimum Requirements

- **CPU**: 4 cores (x86_64 or ARM64)
- **RAM**: 8GB
- **Storage**: 100GB SSD
- **Operating System**:
  - Ubuntu 20.04 LTS or later
  - RHEL/CentOS 8 or later
  - Debian 10 or later

### Recommended Requirements

- **CPU**: 8+ cores
- **RAM**: 16GB+
- **Storage**: 200GB+ NVMe SSD
- **Operating System**:
  - Ubuntu 22.04 LTS
  - RHEL 9+
  - Debian 11+

## Database Requirements

### Supported Databases

- **PostgreSQL**: 13.0 or later (recommended)
- **MySQL**: 8.0 or later
- **SQLite**: 3.35.0 or later (development only)

### Database Sizing

| Number of Assets | Minimum Storage | Recommended Storage |
|-----------------|-----------------|---------------------|
| < 1,000        | 10GB            | 20GB                |
| 1,000 - 10,000 | 50GB            | 100GB               |
| > 10,000       | 100GB           | 200GB+              |

## Web Server Requirements

- **Nginx**: 1.18.0 or later
- **Apache**: 2.4.0 or later (with mod_wsgi)
- **Gunicorn**: 20.0.0 or later (for standalone operation)

## Browser Requirements

### Supported Browsers

- Google Chrome (latest 2 versions)
- Mozilla Firefox (latest 2 versions)
- Apple Safari (latest 2 versions)
- Microsoft Edge (latest 2 versions)

### Required Features

- JavaScript enabled
- Cookies enabled
- WebSockets support
- Local storage support

## Network Requirements

### Inbound Ports

| Port | Protocol | Purpose                     |
|------|----------|-----------------------------|
| 80   | TCP      | HTTP traffic                |
| 443  | TCP      | HTTPS traffic               |
| 22   | TCP      | SSH (for administration)    |

### Outbound Connections

WINGMAN requires outbound connections to:

- Package repositories (for updates)
- Vulnerability databases (for updates)
- Integrated third-party services

## Integration Requirements

### Authentication

- LDAP/Active Directory
- OAuth 2.0
- SAML 2.0
- Local authentication

### API Access

- REST API
- GraphQL API
- Webhooks

## Virtualization Support

### Supported Platforms

- VMware vSphere
- Microsoft Hyper-V
- KVM
- Docker
- Kubernetes

### Resource Allocation

When virtualizing WINGMAN, ensure proper resource allocation and reservation to maintain performance.

## High Availability

For production environments, consider:

- Load balancing
- Database replication
- Failover mechanisms
- Regular backups
