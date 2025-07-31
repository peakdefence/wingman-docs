# Node Integrations

This guide explains how to integrate WINGMAN with various node management systems and security tools.

## Supported Node Types

### 1. Security Tools
- Vulnerability Scanners (Nessus, Qualys, etc.)
- Endpoint Detection and Response (EDR)
- Security Information and Event Management (SIEM)

### 2. IT Infrastructure
- Configuration Management Databases (CMDB)
- Cloud Platforms (AWS, Azure, GCP)
- Container Orchestrators (Kubernetes, Docker Swarm)

### 3. Network Devices
- Firewalls
- Switches and Routers
- Intrusion Detection/Prevention Systems (IDS/IPS)

## Configuration

### Adding a New Node

1. Navigate to **Integrations** > **Nodes**
2. Click **Add Node**
3. Select the node type
4. Enter connection details
5. Test the connection
6. Save the configuration

### Authentication Methods

1. **API Keys**
   - Generate in the target system
   - Store securely in WINGMAN
   - Rotate regularly

2. **OAuth**
   - Register WINGMAN as an OAuth client
   - Configure scopes and permissions
   - Complete the OAuth flow

3. **Service Accounts**
   - Create dedicated service accounts
   - Assign minimum required permissions
   - Monitor usage

## Data Synchronization

### Automatic Sync

1. Configure sync frequency
2. Set up filters (e.g., only sync production assets)
3. Map fields between systems
4. Enable conflict resolution rules

### Manual Sync

1. Navigate to the node details
2. Click **Sync Now**
3. Review changes
4. Apply updates

## Best Practices

### Security

- Use encrypted connections (HTTPS, SSH)
- Implement network segmentation
- Monitor API usage
- Regularly audit access

### Performance

- Schedule large syncs during off-hours
- Use incremental updates when possible
- Monitor system resources
- Set appropriate timeouts

### Maintenance

- Keep integration software updated
- Document configuration changes
- Test after updates
- Have a rollback plan

## Troubleshooting

### Common Issues

- **Connection Failures**
  - Verify network connectivity
  - Check credentials
  - Review firewall rules

- **Sync Errors**
  - Check API rate limits
  - Verify data formats
  - Review error logs

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support
- Review system logs
