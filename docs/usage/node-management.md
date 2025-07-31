# Node Management

This guide covers how to manage nodes in the WINGMAN graph database.

## Overview

Nodes are the fundamental building blocks of the WINGMAN graph database. This guide explains how to create, update, and manage nodes.

## Node Types

### Core Node Types

1. **Asset Nodes**
   - Physical or virtual assets
   - Contain properties like IP, hostname, OS

2. **Vulnerability Nodes**
   - Security vulnerabilities
   - Include CVE information, CVSS scores

3. **User Nodes**
   - System users and administrators
   - Authentication and authorization details

4. **Control Nodes**
   - Security controls and safeguards
   - Compliance requirements

## Managing Nodes

### Creating Nodes

#### Web Interface
1. Navigate to **Graph** > **Nodes**
2. Click **Create Node**
3. Select node type
4. Enter properties
5. Click **Save**

#### API
```http
POST /api/v1/nodes
Content-Type: application/json

{
  "type": "Asset",
  "properties": {
    "name": "web-server-01",
    "ip_address": "192.168.1.10",
    "os": "Ubuntu 20.04"
  }
}
```

### Updating Nodes

1. Locate the node in the graph
2. Click to select
3. Update properties in the side panel
4. Click **Save Changes**

### Deleting Nodes

1. Select the node
2. Click the trash icon
3. Confirm deletion

> **Warning**: Deleting a node will also remove all its relationships.

## Bulk Operations

### Importing Nodes

1. Prepare a CSV or JSON file
2. Navigate to **Tools** > **Import**
3. Select file and mapping
4. Preview and confirm

### Exporting Nodes

1. Apply any filters
2. Click **Export**
3. Choose format (CSV, JSON)
4. Download the file

## Node Properties

### Common Properties

- `id`: Unique identifier
- `created_at`: Creation timestamp
- `updated_at`: Last update timestamp
- `created_by`: User who created the node

### Custom Properties

Add custom properties as needed:
1. Select the node
2. Click **Add Property**
3. Enter name and value
4. Save changes

## Best Practices

1. **Naming Conventions**
   - Use consistent naming
   - Include environment prefixes (e.g., `prod-`, `dev-`)
   - Document naming standards

2. **Property Management**
   - Keep properties atomic
   - Use consistent data types
   - Document custom properties

3. **Lifecycle**
   - Tag deprecated nodes
   - Archive old nodes
   - Regular cleanup of unused nodes

## Troubleshooting

### Common Issues

- **Duplicate Nodes**: Use the merge tool to combine duplicates
- **Missing Properties**: Check required fields
- **Performance Issues**: Index frequently queried properties

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support through the help menu
