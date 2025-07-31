# Asset Registry

This guide explains how to manage assets in the WINGMAN Asset Registry.

## Overview

The Asset Registry is a central repository for all assets in your environment. It helps you track, manage, and secure your organization's assets.

## Adding Assets

### Manual Entry

1. Navigate to **Assets** > **Add New**
2. Fill in the asset details
3. Assign tags and categories
4. Save the asset

### Bulk Import

1. Prepare a CSV file with asset details
2. Navigate to **Assets** > **Import**
3. Upload the CSV file
4. Map the columns to asset fields
5. Review and confirm import

## Asset Properties

### Basic Information

- **Name**: Unique identifier
- **Type**: Server, Workstation, Network Device, etc.
- **IP Address**: Primary IP address
- **MAC Address**: Physical address
- **Operating System**: OS name and version
- **Owner**: Department or individual responsible

### Classification

- **Criticality**: High/Medium/Low
- **Environment**: Production/Development/Test
- **Location**: Physical or logical location
- **Business Unit**: Owning department or team

### Security Information

- **Patch Level**: Last patch date
- **Vulnerabilities**: Known vulnerabilities
- **Controls**: Security controls applied
- **Compliance**: Compliance status

## Asset Discovery

### Network Scanning

1. Configure scan parameters
2. Schedule regular scans
3. Review and approve discovered assets

### Agent-Based Discovery

1. Install WINGMAN agent
2. Configure discovery settings
3. Monitor discovered assets

## Best Practices

- Keep asset information up to date
- Regularly verify asset inventory
- Tag assets consistently
- Document ownership and responsibilities
- Review access controls regularly
