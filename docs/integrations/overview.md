# Integration Overview

WINGMAN is designed to integrate seamlessly with your existing security tools and infrastructure. This section provides an overview of available integrations and how to configure them.

## Supported Integrations

### Security Tools

- **Vulnerability Scanners**
  - *Nessus* (Planned)
  - PenTest Tools (DONE)

- **SIEM Solutions**
  - *Elastic Stack* (Planned)
  - *Splunk* (Planned)
  - *LogRhythm* (Planned)
  
- **Ticketing Systems**
  - Jira (In progress)
  - Mattermost (Planned)
  - ServiceNow (Planned)
  - Zendesk (Planned)
  - Freshservice (Planned)
  - Ivanti ITSM (Planned)

- **Cloud Providers**
  - AWS Security Hub (Planned)
  - Microsoft Azure Security Center (Planned)
  - Google Cloud Security Command Center (Planned)


### Data Sources

- **Threat Intelligence Feeds**
  - MITRE ATT&CK (Planned)
  - MISP (Planned)
  - VirusTotal (Planned)

- **Compliance Frameworks** as requirements sources
  - NIST CSF (DONE - importable)
  - ISO 27001 (DONE - importable)
  - CIS Controls (DONE - importable)
  - PCI DSS (DONE - importable)
  - HIPAA (DONE - importable)

## Integration Architecture

WINGMAN uses a flexible integration architecture that supports:

1. **API-based Integrations**
   - REST APIs
   - MCP (Model Context Protocol)
   - Webhooks

2. **File-based Integrations**
   - CSV/JSON/XML imports
   - Scheduled exports

3. **Agent-based Collection**
   - Lightweight agents for data collection
   - Secure communication channels

## Authentication Methods

WINGMAN supports various authentication methods for integrations:

- API Keys
- OAuth 2.0 / OpenID Connect
- Service Accounts


## Configuration

### Basic Integration Setup

Done by Peak Defence team as part of deployment configuration for a customer.


## Next Steps

- [Jira Integration](jira.md)
- [Pen-test tools integration](pen-test-tools.md)
- [Communication Integrations](communication.md)
