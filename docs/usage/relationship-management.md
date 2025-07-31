# Relationship Management

This guide explains how to manage relationships between nodes in the WINGMAN graph database.

## Overview

Relationships connect nodes and define how they interact. This guide covers creating, managing, and analyzing relationships in WINGMAN.

## Relationship Types

### Core Relationship Types

1. **HAS_VULNERABILITY**
   - Connects assets to vulnerabilities
   - Properties: `first_seen`, `status`, `proof`

2. **OWNS**
   - Connects users to assets
   - Properties: `since`, `type`

3. **DEPENDS_ON**
   - Shows dependencies between assets
   - Properties: `type`, `criticality`

4. **MITIGATES**
   - Connects controls to vulnerabilities
   - Properties: `effectiveness`, `implementation_date`

## Managing Relationships

### Creating Relationships

#### Web Interface
1. Select the source node
2. Click and drag to the target node
3. Select relationship type
4. Enter properties
5. Click **Create**

#### API
```http
POST /api/v1/relationships
Content-Type: application/json

{
  "source_id": "node-123",
  "target_id": "node-456",
  "type": "HAS_VULNERABILITY",
  "properties": {
    "first_seen": "2023-01-01T00:00:00Z",
    "status": "open"
  }
}
```

### Updating Relationships

1. Select the relationship in the graph
2. Update properties in the side panel
3. Click **Save Changes**

### Deleting Relationships

1. Select the relationship
2. Press Delete or click the trash icon
3. Confirm deletion

## Relationship Properties

### Common Properties

- `id`: Unique identifier
- `created_at`: Creation timestamp
- `updated_at`: Last update timestamp
- `created_by`: User who created the relationship

### Type-Specific Properties

Each relationship type can have custom properties. Refer to the documentation for specific relationship types.

## Analyzing Relationships

### Path Finding

1. Select two or more nodes
2. Right-click and select **Find Paths**
3. Configure path parameters
4. View and analyze results

### Pattern Matching

Use Cypher queries to find complex patterns:

```cypher
MATCH (a:Asset)-[r:HAS_VULNERABILITY]->(v:Vulnerability)
WHERE v.severity = 'CRITICAL'
RETURN a, r, v
```

## Best Practices

1. **Consistency**
   - Use consistent relationship types
   - Document relationship semantics
   - Follow naming conventions

2. **Performance**
   - Index frequently traversed relationships
   - Avoid creating unnecessary relationships
   - Use properties instead of many relationships

3. **Maintenance**
   - Regularly review and clean up old relationships
   - Document relationship schemas
   - Version relationship types when they change

## Troubleshooting

### Common Issues

- **Missing Relationships**: Check for typos in relationship types
- **Performance Issues**: Add indexes on frequently queried properties
- **Inconsistent Data**: Use constraints to enforce data integrity

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support through the help menu
