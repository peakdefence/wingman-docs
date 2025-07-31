# Data Synchronization

This guide explains how to configure and manage data synchronization between WINGMAN and integrated systems.

## Synchronization Types

### 1. One-Way Sync
- **Push**: WINGMAN → External System
- **Pull**: External System → WINGMAN

### 2. Two-Way Sync
- Bidirectional synchronization
- Conflict resolution strategies
- Change tracking

## Configuration

### Setting Up a New Sync

1. Navigate to **Integrations** > **Synchronization**
2. Click **New Sync**
3. Select source and target systems
4. Configure sync direction
5. Map fields between systems
6. Set up scheduling
7. Save and enable

### Field Mapping

1. **Automatic Mapping**
   - Matches fields by name
   - Suggests data type conversions
   - Handles common formats

2. **Custom Mapping**
   - Manual field pairing
   - Data transformations
   - Conditional mapping rules

### Scheduling

- **Real-time**: Sync on change
- **Scheduled**: Hourly, daily, weekly
- **Manual**: On-demand sync

## Advanced Features

### Conflict Resolution

1. **Last Write Wins**
   - Most recent change takes precedence
   - Timestamp-based

2. **Source Wins**
   - Source system always takes precedence
   - For one-way syncs

3. **Custom Rules**
   - Field-level rules
   - Conditional logic
   - Manual review

### Data Filtering

- Include/Exclude specific records
- Filter by attributes
- Date range filtering
- Status-based filtering

### Performance Optimization

- Batch processing
- Parallel syncs
- Incremental updates
- Caching strategies

## Monitoring and Logging

### Sync Status

- Last successful sync
- Next scheduled sync
- Record counts
- Error notifications

### Logs

- Detailed execution logs
- Error messages
- Performance metrics
- Audit trail

## Best Practices

### Data Quality

- Validate data before sync
- Handle missing values
- Maintain data consistency
- Clean up old data

### Security

- Encrypt data in transit and at rest
- Use service accounts with least privilege
- Monitor access logs
- Regular security reviews

### Maintenance

- Regular health checks
- Monitor sync performance
- Update field mappings as needed
- Archive old sync logs

## Troubleshooting

### Common Issues

- **Authentication Failures**
  - Check credentials
  - Verify permissions
  - Check token expiration

- **Data Mismatches**
  - Review field mappings
  - Check data types
  - Look for transformation errors

- **Performance Problems**
  - Check system resources
  - Optimize queries
  - Adjust batch sizes

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support
- Review system logs

## Example: Setting Up a Vulnerability Sync

1. **Source**: Vulnerability Scanner
2. **Target**: WINGMAN
3. **Schedule**: Daily at 2 AM
4. **Field Mapping**:
   - Scanner ID → External ID
   - CVE → CVE ID
   - Severity → Risk Score
   - Description → Notes
5. **Conflict Resolution**: Last Write Wins
6. **Notifications**: Email on failure

## Next Steps

- [Integration Overview](overview.md)
- [Node Integrations](nodes.md)
- [Communication Integrations](communication.md)
