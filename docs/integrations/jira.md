# Jira Integration

This guide explains how to integrate WINGMAN with Jira for streamlined vulnerability and issue tracking.

## Prerequisites

- Jira Cloud or Jira Server/Data Center instance
- Jira user with permissions to create and modify issues
- Administrator access to WINGMAN
- Network connectivity between WINGMAN and Jira

## Configuration Steps

### 1. Create a Jira API Token

1. Log in to your Jira instance
2. Click on your profile picture in the bottom left
3. Select **Account settings** > **Security** > **API tokens**
4. Click **Create API token**
5. Enter a label (e.g., "WINGMAN Integration")
6. Copy the generated token (you won't be able to see it again)

### 2. Configure WINGMAN Integration

1. In WINGMAN, go to **Settings** > **Integrations**
2. Click **Add Integration** and select **Jira**
3. Enter the following details:
   - **Name**: A descriptive name (e.g., "Production Jira")
   - **Jira URL**: The base URL of your Jira instance
   - **Email/Username**: Your Jira email/username
   - **API Token**: The API token you generated
   - **Project Key**: The key of the Jira project to create issues in
   - **Issue Type**: The type of issue to create (e.g., Bug, Task)
   - **Verify SSL**: Enable/disable SSL verification

4. Click **Test Connection** to verify the integration
5. Click **Save** to enable the integration

## Features

### Automatic Ticket Creation

Configure rules to automatically create Jira tickets for:
- New high/critical vulnerabilities
- Compliance violations
- Security incidents
- Scheduled tasks

### Custom Field Mapping

Map WINGMAN fields to Jira fields:
- Vulnerability details to Jira description
- Severity to Jira priority
- Due dates and assignees
- Custom fields and labels

### Two-Way Synchronization

- Comments and updates sync between WINGMAN and Jira
- Status changes in Jira update WINGMAN
- @mentions and notifications

## API Reference

### Create Jira Issue

```http
POST /rest/api/3/issue
Authorization: Basic <base64_encoded_email:api_token>
Content-Type: application/json

{
  "fields": {
    "project": {
      "key": "WING"
    },
    "summary": "[WINGMAN] New Critical Vulnerability",
    "issuetype": {
      "name": "Bug"
    },
    "description": {
      "type": "doc",
      "version": 1,
      "content": [
        {
          "type": "paragraph",
          "content": [
            {
              "text": "Vulnerability details here",
              "type": "text"
            }
          ]
        }
      ]
    },
    "priority": {
      "name": "Highest"
    }
  }
}
```

## Troubleshooting

### Common Issues

1. **Authentication Failed**
   - Verify your email/username and API token
   - Check if the API token has the correct permissions
   - For Jira Server, ensure token-based authentication is enabled

2. **Permission Issues**
   - Verify the Jira user has permission to create issues in the target project
   - Check project permissions and issue type schemes

3. **Field Mismatches**
   - Verify custom field IDs exist in Jira
   - Check that required fields are mapped
   - Review field types and formats

## Best Practices

1. **Project Structure**
   - Create a dedicated project for security issues
   - Set up appropriate workflows and statuses
   - Define custom fields for security-specific data

2. **Automation Rules**
   - Create templates for common issue types
   - Set up automation rules for common scenarios
   - Configure notifications and escalations

3. **Security**
   - Use service accounts with least privilege
   - Rotate API tokens regularly
   - Monitor API usage and audit logs

## Next Steps

- [Integration Overview](overview.md)
- [Explore Other Integrations](overview.md)
