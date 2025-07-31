# Creating Custom Flows

This guide explains how to create and manage custom flows in WINGMAN to automate your unique security processes.

## Getting Started with Custom Flows

### Prerequisites

- Editor permissions in WINGMAN
- Understanding of your organization's processes
- Knowledge of available triggers and actions

### Accessing the Flow Builder

1. Log in to WINGMAN
2. Navigate to **Automation** > **Flows**
3. Click **Create New Flow**

## Flow Components

### 1. Triggers

Events that start your flow:

- **System Events**: New alert, vulnerability found, etc.
- **Scheduled**: Run at specific times/intervals
- **Manual**: Triggered by user action
- **API**: Webhook or REST API call

### 2. Conditions

Control flow execution with logic:

- **If/Else** statements
- **Switch/Case** for multiple conditions
- **Filters** to narrow down data
- **Loops** for processing collections

### 3. Actions

What the flow will do:

- **Notifications**: Email, Slack, Teams
- **Ticketing**: Create/update tickets
- **Data Operations**: Create/update records
- **Integrations**: Call external APIs
- **Scripts**: Run custom code

## Building a Custom Flow

### Step 1: Define the Purpose

- What problem does this solve?
- Who are the stakeholders?
- What's the success criteria?

### Step 2: Design the Flow

1. Identify the trigger
2. Map out the steps
3. Define decision points
4. Plan error handling

### Step 3: Build the Flow

1. **Add a Trigger**
   - Select from available triggers
   - Configure trigger parameters

2. **Add Actions**
   - Drag and drop actions
   - Configure each action
   - Connect actions in sequence

3. **Add Conditions**
   - Define when actions should run
   - Set up branching logic
   - Handle errors and timeouts

4. **Configure Settings**
   - Set flow name and description
   - Configure error handling
   - Set permissions

### Step 4: Test the Flow

1. **Test in Development**
   - Use test data
   - Verify each step
   - Check error handling

2. **User Acceptance Testing**
   - Involve stakeholders
   - Validate results
   - Gather feedback

3. **Performance Testing**
   - Test with production-like data volumes
   - Check execution time
   - Monitor resource usage

## Advanced Features

### 1. Variables and Data

- **Flow Variables**: Store temporary data
- **Environment Variables**: Store sensitive data
- **Data Transformation**: Modify data between steps

### 2. Error Handling

- **Retry Logic**: Configure automatic retries
- **Error Paths**: Define fallback actions
- **Notifications**: Alert on failures

### 3. Version Control

- Save versions of your flow
- Roll back to previous versions
- Compare changes

## Best Practices

### 1. Design Principles

- Keep flows focused and simple
- Use sub-flows for complex logic
- Document your flows
- Follow naming conventions

### 2. Security

- Follow least privilege principle
- Secure API credentials
- Audit flow execution

### 3. Maintenance

- Regularly review and update
- Monitor performance
- Archive unused flows

## Example: Custom Vulnerability Triage Flow

### Trigger
- New vulnerability detected

### Conditions
- If CVSS score > 7.0
- AND affects production systems

### Actions
1. Create Jira ticket
2. Notify security team
3. Add to weekly review board
4. Update vulnerability status

## Troubleshooting

### Common Issues

- **Flow Not Triggering**
  - Check trigger configuration
  - Verify permissions
  - Check logs

- **Action Failing**
  - Verify input data
  - Check API connectivity
  - Review error messages

### Getting Help

- Check the [documentation](https://docs.wingman.peakdefence.com)
- Contact support
- Review system logs

## Next Steps

- [Understanding Flows](understanding-flows.md)
- [Standard Flows](standard-flows.md)
- [Flow Execution](execution.md)
