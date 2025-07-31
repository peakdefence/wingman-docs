# Data Import Guide

This guide explains how to import data into WINGMAN from various sources.

## Supported Import Formats

WINGMAN supports importing data in the following formats:

- **CSV/TSV**: Comma/Tab-separated values
- **JSON**: JavaScript Object Notation
- **XML**: Extensible Markup Language
- **Nessus**: Direct from Nessus scan results
- **NMAP**: NMAP scan results
- **Qualys**: Qualys scan exports
- **Custom**: Custom import scripts

## Import Methods

### 1. Web Interface

1. Navigate to **Settings** > **Data Import**
2. Select the import type
3. Upload your file or enter connection details
4. Map fields to WINGMAN data model
5. Preview and confirm the import

### 2. Command Line Interface (CLI)

```bash
# Basic import command
wingman-cli import --type nessus --file scan_results.nessus

# With additional options
wingman-cli import \
  --type csv \
  --file assets.csv \
  --mapping asset_mapping.yaml \
  --dry-run
```

### 3. REST API

```http
POST /api/v1/import
Content-Type: multipart/form-data

{
  "type": "csv",
  "file": "<file_content>",
  "mapping": {
    "Asset": {
      "name": "hostname",
      "ip_address": "ip",
      "os": "operating_system"
    }
  }
}
```

## Data Mapping

### CSV/TSV Import

1. **Header Row**: Should contain column names
2. **Data Types**: Auto-detected or specified in mapping
3. **Required Fields**: Must be present in the import file

Example mapping file (`mapping.yaml`):

```yaml
Asset:
  name: hostname
  ip_address: ip
  type: device_type
  criticality:
    field: importance
    mapping:
      high: critical
      medium: high
      low: medium
```

### JSON/XML Import

- Supports nested structures
- Use dot notation for nested fields
- Supports array processing

Example JSON structure:

```json
{
  "assets": [
    {
      "id": "asset1",
      "details": {
        "name": "web-server-01",
        "ip": "192.168.1.10"
      },
      "tags": ["web", "production"]
    }
  ]
}
```

Corresponding mapping:

```yaml
Asset:
  name: details.name
  ip_address: details.ip
  tags: tags
```

## Automated Imports

### Scheduled Imports

1. Set up a scheduled job using cron or Windows Task Scheduler
2. Use the CLI with appropriate authentication
3. Process and validate the results

Example cron job:

```bash
# Run daily at 2 AM
0 2 * * * /usr/bin/wingman-cli import --type nessus --file /scans/daily_scan.nessus
```

### Webhook Integration

1. Configure webhook in the source system
2. Set up the endpoint in WINGMAN
3. Process incoming data in real-time

## Data Validation

### Pre-Import Validation

- Check required fields
- Validate data formats
- Verify data relationships

### Post-Import Verification

- Review import summary
- Check for warnings/errors
- Validate record counts
- Spot-check imported data

## Common Import Scenarios

### 1. Initial Data Load

1. Export data from existing systems
2. Clean and normalize the data
3. Create mapping configuration
4. Perform test import
5. Execute full import

### 2. Regular Updates

1. Schedule regular exports from source systems
2. Use incremental imports where possible
3. Handle updates and deletes appropriately
4. Maintain change history

### 3. Bulk Updates

1. Prepare update file with changes
2. Use `--update` flag for existing records
3. Specify key fields for matching
4. Review changes before applying

## Troubleshooting

### Common Issues

1. **Authentication Failures**
   - Verify API keys or credentials
   - Check permissions
   - Review access logs

2. **Data Format Issues**
   - Validate file encoding (UTF-8 recommended)
   - Check for hidden characters
   - Verify line endings

3. **Mapping Errors**
   - Check field names and types
   - Verify required fields
   - Review mapping configuration

### Logs and Debugging

- Check application logs for errors
- Enable debug logging for more details
- Use `--dry-run` to test without importing
- Review API responses for error messages

## Best Practices

1. **Backup First**
   - Always back up your data before large imports
   - Test imports in a non-production environment first

2. **Incremental Imports**
   - Use timestamps to import only new/changed data
   - Implement change detection where possible

3. **Data Quality**
   - Clean and normalize data before importing
   - Validate data against business rules
   - Handle missing or invalid data appropriately

4. **Documentation**
   - Document your import processes
   - Keep mapping configurations in version control
   - Maintain a change log

## Next Steps

- [Data Model](../core-concepts/graph-database.md)
- [Getting Started](../getting-started/quick-start.md)
