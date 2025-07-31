# Communication Integrations

This guide covers how to integrate WINGMAN with various communication platforms for alerts and notifications.

## Supported Platforms

### 1. Email
- SMTP server configuration
- Email templates
- Notification rules

### 2. Slack
- Incoming webhooks
- Channel notifications
- Interactive messages

### 3. Microsoft Teams
- Incoming webhooks
- Adaptive cards
- Message formatting

### 4. Webhooks
- Custom webhook endpoints
- Authentication
- Payload formatting

## Configuration

### Email Setup

1. Navigate to **Settings** > **Integrations** > **Email**
2. Enter SMTP server details
3. Configure sender information
4. Test the connection

### Slack Setup

1. Create a new Slack app
2. Enable incoming webhooks
3. Copy the webhook URL
4. Add to WINGMAN integration settings

### Microsoft Teams Setup

1. Create an incoming webhook connector
2. Copy the webhook URL
3. Add to WINGMAN integration settings

## Usage

### Creating Notifications

1. Navigate to **Automation** > **Notifications**
2. Click **Create Notification**
3. Select the integration type
4. Configure the message template
5. Set conditions and recipients
6. Save and activate

### Message Templates

Use variables to customize messages. The following variables are available in notification templates:

- `{{ title }}` - The title of the notification
- `{{ severity }}` - Severity level (e.g., info, warning, error, critical)
- `{{ asset_name }}` - Name of the affected asset (if applicable)
- `{{ timestamp }}` - Time when the notification was generated (ISO 8601 format)
- `{{ source }}` - Source system that generated the notification
- `{{ message }}` - Detailed message content

Example template:
```
[{{ severity|default('INFO')|upper }}] {{ title|default('New Notification') }}

{% if asset_name is defined and asset_name %}
Asset: {{ asset_name }}
{% endif %}
Time: {{ now().strftime('%Y-%m-%d %H:%M:%S') }}
Source: {{ source|default('WINGMAN') }}

{{ message|default('No additional details provided.') }}
```

## Best Practices

1. **Security**
   - Use secure connections (HTTPS)
   - Rotate API keys regularly
   - Follow least privilege principle

2. **Performance**
   - Rate limit notifications
   - Batch messages when possible
   - Monitor delivery status

3. **User Experience**
   - Keep messages concise
   - Include actionable information
   - Provide clear next steps

## Troubleshooting

### Common Issues

- **Failed Deliveries**
  - Check network connectivity
  - Verify API keys/webhook URLs
  - Review rate limits

- **Formatting Issues**
  - Check message templates
  - Validate JSON payloads
  - Test with different clients

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support
- Review system logs
