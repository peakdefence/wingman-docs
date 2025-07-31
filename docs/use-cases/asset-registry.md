# Asset Registry Use Case

This document outlines how to use WINGMAN as a comprehensive asset registry for your organization's IT infrastructure.

## Overview

WINGMAN's asset registry provides a centralized inventory of all IT assets, their relationships, and security postures.

## Key Features

### 1. Asset Discovery

- **Automated Discovery**
  - Network scanning
  - Cloud provider integration
  - Agent-based discovery

- **Manual Entry**
  - Web interface
  - Bulk import
  - API integration

### 2. Asset Classification

- **Types**
  - Servers (physical/virtual)
  - Network devices
  - Endpoints
  - Cloud resources
  - Applications

- **Attributes**
  - Owner/department
  - Criticality
  - Location
  - Environment (prod/dev/test)

### 3. Relationship Mapping

- **Infrastructure Dependencies**
  - Network connections
  - Application dependencies
  - Data flows
  - Ownership hierarchies

## Implementation Guide

### 1. Initial Setup

1. **Define Asset Types**
   - Create custom types if needed
   - Define required attributes
   - Set up classification schemes

2. **Configure Discovery**
   - Set up network ranges
   - Configure cloud integrations
   - Deploy discovery agents

### 2. Data Collection

1. **Automated Collection**
   - Schedule regular scans
   - Set up change detection
   - Configure event-based updates

2. **Manual Updates**
   - Train staff on data entry
   - Establish review processes
   - Implement approval workflows

### 3. Maintenance

1. **Data Quality**
   - Regular audits
   - Automated validation
   - Duplicate detection

2. **Lifecycle Management**
   - Onboarding new assets
   - Tracking changes
   - Decommissioning

## Integration with Security Processes

### 1. Vulnerability Management

- Map vulnerabilities to assets
- Calculate risk scores
- Prioritize remediation

### 2. Incident Response

- Quick asset identification
- Impact assessment
- Response coordination

### 3. Compliance

- Asset-based compliance checks
- Evidence collection
- Reporting

## Best Practices

### 1. Data Quality

- Regular validation
- Automated enrichment
- Source verification

### 2. Access Control

- Role-based access
- Audit logging
- Change tracking

### 3. Performance

- Indexing strategy
- Data partitioning
- Query optimization

## Example: Cloud Asset Management

### 1. Setup

1. Connect cloud accounts
2. Define tagging standards
3. Configure discovery schedules

### 2. Operations

1. Monitor for new resources
2. Enforce tagging policies
3. Track configuration changes

### 3. Security

1. Identify unsecured resources
2. Monitor for compliance drift
3. Generate audit reports

## Troubleshooting

### Common Issues

- **Missing Assets**
  - Check network connectivity
  - Verify permissions
  - Review discovery settings

- **Incorrect Data**
  - Check data sources
  - Review transformation rules
  - Validate inputs

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support
- Review system logs

## Next Steps

- [Incident Response](incident-response.md)
- [Compliance Audit](compliance-audit.md)
- [Vulnerability Management](vulnerability-management.md)
